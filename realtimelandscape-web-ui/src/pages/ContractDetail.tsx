import { useEffect, useState } from 'react';
import { useParams } from 'react-router-dom';
import { activitiesApi, contractsApi } from '../api/client';
import { EditLayout } from '../components/EditLayout';
import type {
  Activity,
  Contract,
  ContractLineItem,
  ContractStatus,
  MonthlyValues,
  TechnicalLineItem,
  VisitCalculations,
} from '../types';

const MONTHS = ['jan', 'feb', 'mar', 'apr', 'may', 'jun', 'jul', 'aug', 'sep', 'oct', 'nov', 'dec'] as const;

const STATUS_TRANSITIONS: Record<ContractStatus, ContractStatus[]> = {
  Draft: ['PendingActivation', 'Cancelled'],
  PendingActivation: ['Active', 'Draft', 'Cancelled'],
  Active: ['PendingCompletion', 'Cancelled'],
  PendingCompletion: ['Completed', 'Active'],
  Completed: [],
  Cancelled: [],
};

function emptyMonthlyValues(): MonthlyValues {
  return {
    jan: 0, feb: 0, mar: 0, apr: 0, may: 0, jun: 0,
    jul: 0, aug: 0, sep: 0, oct: 0, nov: 0, dec: 0,
  };
}

function normalizeMonthlyValues(values?: Partial<MonthlyValues> | null): MonthlyValues {
  return {
    jan: Number(values?.jan ?? 0),
    feb: Number(values?.feb ?? 0),
    mar: Number(values?.mar ?? 0),
    apr: Number(values?.apr ?? 0),
    may: Number(values?.may ?? 0),
    jun: Number(values?.jun ?? 0),
    jul: Number(values?.jul ?? 0),
    aug: Number(values?.aug ?? 0),
    sep: Number(values?.sep ?? 0),
    oct: Number(values?.oct ?? 0),
    nov: Number(values?.nov ?? 0),
    dec: Number(values?.dec ?? 0),
  };
}

function normalizeVisitCalculations(calculations?: Partial<VisitCalculations> | null): VisitCalculations {
  return {
    workDayHours: Number(calculations?.workDayHours ?? 8),
    siteVisits: normalizeMonthlyValues(calculations?.siteVisits),
    averageCrew: normalizeMonthlyValues(calculations?.averageCrew),
    mhSums: normalizeMonthlyValues(calculations?.mhSums),
    generalContractHours: Number(calculations?.generalContractHours ?? 0),
    totalGeneralVisits: Number(calculations?.totalGeneralVisits ?? 0),
    crewVisit: normalizeMonthlyValues(calculations?.crewVisit),
    percentOfDailyTravel: normalizeMonthlyValues(calculations?.percentOfDailyTravel),
    travel: normalizeMonthlyValues(calculations?.travel),
    monthlyTravel: normalizeMonthlyValues(calculations?.monthlyTravel),
    totalMonthlyTravel: Number(calculations?.totalMonthlyTravel ?? 0),
    mhOnSitePerVisit: normalizeMonthlyValues(calculations?.mhOnSitePerVisit),
    percentMHPerMonth: normalizeMonthlyValues(calculations?.percentMHPerMonth),
    totalAnnualPercent: Number(calculations?.totalAnnualPercent ?? 0),
    travelCost: Number(calculations?.travelCost ?? 0),
    travelPrice: Number(calculations?.travelPrice ?? 0),
  };
}

function normalizeLineItem(item: ContractLineItem): ContractLineItem {
  return {
    ...item,
    activity: String(item.activity ?? ''),
    quantity: Number(item.quantity ?? 0),
    materialMarkup: Number(item.materialMarkup ?? 0.35),
    monthlyFrequency: normalizeMonthlyValues(item.monthlyFrequency),
    monthlyMH: normalizeMonthlyValues(item.monthlyMH),
    mh: Number(item.mh ?? 0),
    totalFreq: Number(item.totalFreq ?? 0),
    totalMH: Number(item.totalMH ?? 0),
    laborPrice: Number(item.laborPrice ?? 0),
    materialCost: Number(item.materialCost ?? 0),
    annualPrice: Number(item.annualPrice ?? 0),
  };
}

function normalizeTechnicalLineItem(item: TechnicalLineItem): TechnicalLineItem {
  return {
    ...normalizeLineItem(item),
    techCrewSize: Number(item.techCrewSize ?? 1),
    techTravelPerVisit: item.techTravelPerVisit ?? '',
  };
}

function normalizeContract(contract: Contract): Contract {
  return {
    ...contract,
    generalLaborCost: Number(contract.generalLaborCost ?? 0),
    generalOverheadAndProfit: Number(contract.generalOverheadAndProfit ?? 0),
    generalLineItems: (contract.generalLineItems ?? []).map(normalizeLineItem),
    technicalLineItems: (contract.technicalLineItems ?? []).map(normalizeTechnicalLineItem),
    visitCalculations: normalizeVisitCalculations(contract.visitCalculations),
  };
}

function createGeneralLineItem(): ContractLineItem {
  return {
    activity: '',
    quantity: 0,
    materialMarkup: 0.35,
    monthlyFrequency: emptyMonthlyValues(),
    monthlyMH: emptyMonthlyValues(),
    mh: 0,
    totalFreq: 0,
    totalMH: 0,
    laborPrice: 0,
    materialCost: 0,
    annualPrice: 0,
  };
}

function createTechnicalLineItem(): TechnicalLineItem {
  return {
    ...createGeneralLineItem(),
    techCrewSize: 1,
    techTravelPerVisit: '',
  };
}

function formatCurrency(value: number | undefined): string {
  return new Intl.NumberFormat('en-US', {
    style: 'currency',
    currency: 'USD',
    maximumFractionDigits: 2,
  }).format(Number(value ?? 0));
}

function formatPercent(value: number | undefined): string {
  return `${(Number(value ?? 0) * 100).toFixed(1)}%`;
}

function statusColors(status: ContractStatus): { background: string; color: string } {
  switch (status) {
    case 'Active':
      return { background: '#e7f6ea', color: '#256b3d' };
    case 'Completed':
      return { background: '#e7f2ff', color: '#0f4c81' };
    case 'Cancelled':
      return { background: '#fbe7e7', color: '#9b1c1c' };
    default:
      return { background: '#fff4d9', color: '#8a5a00' };
  }
}

function monthLabel(month: (typeof MONTHS)[number]): string {
  return month.slice(0, 3).toUpperCase();
}

export function ContractDetail() {
  const { id } = useParams<{ id: string }>();
  const [contract, setContract] = useState<Contract | null>(null);
  const [activities, setActivities] = useState<Activity[]>([]);
  const [loading, setLoading] = useState(true);
  const [saving, setSaving] = useState(false);
  const [transitioningTo, setTransitioningTo] = useState<ContractStatus | null>(null);
  const [error, setError] = useState<string | null>(null);
  const [notice, setNotice] = useState<string | null>(null);

  useEffect(() => {
    if (!id) {
      setLoading(false);
      setError('Missing contract id');
      return;
    }

    let ignore = false;
    setLoading(true);

    (async () => {
      try {
        const [contractData, activityData] = await Promise.all([
          contractsApi.get(id),
          activitiesApi.list({ isActive: true }),
        ]);

        if (ignore) return;
        setContract(normalizeContract(contractData));
        setActivities(activityData);
        setError(null);
      } catch (err: any) {
        if (ignore) return;
        setError(err.error ?? 'Failed to load contract');
      } finally {
        if (!ignore) setLoading(false);
      }
    })();

    return () => {
      ignore = true;
    };
  }, [id]);

  const updateContract = (updater: (current: Contract) => Contract) => {
    setContract((current) => (current ? updater(current) : current));
  };

  const setGeneralValue = (field: 'generalLaborCost' | 'generalOverheadAndProfit', value: number) => {
    updateContract((current) => ({
      ...current,
      [field]: value,
    }));
  };

  const updateVisitField = (field: keyof VisitCalculations, value: number | MonthlyValues) => {
    updateContract((current) => ({
      ...current,
      visitCalculations: {
        ...current.visitCalculations,
        [field]: value,
      },
    }));
  };

  const updateVisitMonth = (field: 'siteVisits' | 'averageCrew', month: (typeof MONTHS)[number], value: number) => {
    updateContract((current) => ({
      ...current,
      visitCalculations: {
        ...current.visitCalculations,
        [field]: {
          ...current.visitCalculations[field],
          [month]: value,
        },
      },
    }));
  };

  const updateGeneralLineItem = <K extends keyof ContractLineItem>(index: number, field: K, value: ContractLineItem[K]) => {
    updateContract((current) => ({
      ...current,
      generalLineItems: current.generalLineItems.map((item, itemIndex) => (
        itemIndex === index ? { ...item, [field]: value } : item
      )),
    }));
  };

  const updateTechnicalLineItem = <K extends keyof TechnicalLineItem>(index: number, field: K, value: TechnicalLineItem[K]) => {
    updateContract((current) => ({
      ...current,
      technicalLineItems: current.technicalLineItems.map((item, itemIndex) => (
        itemIndex === index ? { ...item, [field]: value } : item
      )),
    }));
  };

  const updateGeneralLineItemMonth = (index: number, month: (typeof MONTHS)[number], value: number) => {
    updateContract((current) => ({
      ...current,
      generalLineItems: current.generalLineItems.map((item, itemIndex) => (
        itemIndex === index
          ? { ...item, monthlyFrequency: { ...item.monthlyFrequency, [month]: value } }
          : item
      )),
    }));
  };

  const updateTechnicalLineItemMonth = (index: number, month: (typeof MONTHS)[number], value: number) => {
    updateContract((current) => ({
      ...current,
      technicalLineItems: current.technicalLineItems.map((item, itemIndex) => (
        itemIndex === index
          ? { ...item, monthlyFrequency: { ...item.monthlyFrequency, [month]: value } }
          : item
      )),
    }));
  };

  const addGeneralLineItem = () => {
    updateContract((current) => ({
      ...current,
      generalLineItems: [...current.generalLineItems, createGeneralLineItem()],
    }));
  };

  const addTechnicalLineItem = () => {
    updateContract((current) => ({
      ...current,
      technicalLineItems: [...current.technicalLineItems, createTechnicalLineItem()],
    }));
  };

  const removeGeneralLineItem = (index: number) => {
    updateContract((current) => ({
      ...current,
      generalLineItems: current.generalLineItems.filter((_, itemIndex) => itemIndex !== index),
    }));
  };

  const removeTechnicalLineItem = (index: number) => {
    updateContract((current) => ({
      ...current,
      technicalLineItems: current.technicalLineItems.filter((_, itemIndex) => itemIndex !== index),
    }));
  };

  const saveContract = async () => {
    if (!contract || !id) return;

    setSaving(true);
    setNotice(null);

    try {
      const updated = await contractsApi.update(id, {
        generalLaborCost: contract.generalLaborCost,
        generalOverheadAndProfit: contract.generalOverheadAndProfit,
        generalLineItems: contract.generalLineItems.map((item) => ({
          activity: item.activity,
          quantity: Number(item.quantity || 0),
          materialMarkup: Number(item.materialMarkup || 0),
          monthlyFrequency: normalizeMonthlyValues(item.monthlyFrequency),
        })),
        technicalLineItems: contract.technicalLineItems.map((item) => ({
          activity: item.activity,
          quantity: Number(item.quantity || 0),
          materialMarkup: Number(item.materialMarkup || 0),
          monthlyFrequency: normalizeMonthlyValues(item.monthlyFrequency),
          techCrewSize: Number(item.techCrewSize || 1),
          techTravelPerVisit: item.techTravelPerVisit ?? '',
        })),
        visitCalculations: {
          workDayHours: Number(contract.visitCalculations.workDayHours || 0),
          siteVisits: normalizeMonthlyValues(contract.visitCalculations.siteVisits),
          averageCrew: normalizeMonthlyValues(contract.visitCalculations.averageCrew),
        },
      } as Partial<Contract>);

      setContract(normalizeContract(updated));
      setError(null);
      setNotice('Contract saved. Totals were recalculated on the server.');
    } catch (err: any) {
      setError(err.error ?? 'Failed to save contract');
    } finally {
      setSaving(false);
    }
  };

  const transitionContract = async (to: ContractStatus) => {
    if (!contract || !id) return;

    setTransitioningTo(to);
    setNotice(null);

    try {
      const updated = await contractsApi.transition(id, to);
      setContract(normalizeContract(updated));
      setError(null);
      setNotice(`Contract moved to ${to}.`);
    } catch (err: any) {
      setError(err.error ?? 'Failed to transition contract');
    } finally {
      setTransitioningTo(null);
    }
  };

  if (loading) {
    return (
      <EditLayout backTo="/contracts" backLabel="Contracts">
        <div style={{ maxWidth: '1280px', margin: '0 auto' }}>
          <p>Loading contract...</p>
        </div>
      </EditLayout>
    );
  }

  if (error && !contract) {
    return (
      <EditLayout backTo="/contracts" backLabel="Contracts">
        <div style={{ maxWidth: '1280px', margin: '0 auto' }}>
          <p style={{ color: '#9b1c1c' }}>Error: {error}</p>
        </div>
      </EditLayout>
    );
  }

  if (!contract) {
    return null;
  }

  const badge = statusColors(contract.status);
  const allowedTransitions = STATUS_TRANSITIONS[contract.status];

  return (
    <EditLayout backTo="/contracts" backLabel="Contracts">
      <div style={{ maxWidth: '1280px', margin: '0 auto', display: 'grid', gap: '1.5rem' }}>
        <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'flex-start', gap: '1rem', flexWrap: 'wrap' }}>
          <div>
            <h2 style={{ margin: 0 }}>{contract.contractNumber}</h2>
            <p style={{ margin: '0.5rem 0 0', color: '#5d6470' }}>{contract.projectDisplayName}</p>
          </div>

          <div style={{ display: 'flex', flexDirection: 'column', alignItems: 'flex-end', gap: '0.75rem' }}>
            <span style={{ padding: '0.4rem 0.75rem', borderRadius: '999px', fontWeight: 600, ...badge }}>
              {contract.status}
            </span>

            <div style={{ display: 'flex', gap: '0.5rem', flexWrap: 'wrap', justifyContent: 'flex-end' }}>
              <button onClick={saveContract} disabled={saving || transitioningTo !== null}>
                {saving ? 'Saving...' : 'Save Changes'}
              </button>
              {allowedTransitions.map((status) => (
                <button
                  key={status}
                  onClick={() => transitionContract(status)}
                  disabled={saving || transitioningTo !== null}
                  style={{
                    background: status === 'Cancelled' ? '#fff0f0' : '#f7f8fb',
                    borderColor: status === 'Cancelled' ? '#e4b4b4' : '#d2d8e3',
                  }}
                >
                  {transitioningTo === status ? `Moving to ${status}...` : `Move to ${status}`}
                </button>
              ))}
            </div>
          </div>
        </div>

        {error && <div style={{ padding: '0.9rem 1rem', borderRadius: '10px', background: '#fff1f1', color: '#9b1c1c' }}>{error}</div>}
        {notice && <div style={{ padding: '0.9rem 1rem', borderRadius: '10px', background: '#edf8ee', color: '#256b3d' }}>{notice}</div>}

        <section style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(180px, 1fr))', gap: '1rem' }}>
          <MetricCard label="Contract Price" value={formatCurrency(contract.contractTotals.contractPrice)} />
          <MetricCard label="Contract Cost" value={formatCurrency(contract.contractTotals.contractCost)} />
          <MetricCard label="Gross Profit" value={formatCurrency(contract.contractTotals.grossProfit)} />
          <MetricCard label="Gross Margin" value={formatPercent(contract.contractTotals.grossProfitPercent)} />
          <MetricCard label="Travel Price" value={formatCurrency(contract.visitCalculations.travelPrice)} />
          <MetricCard label="Annual Visits" value={String(contract.visitCalculations.totalGeneralVisits ?? 0)} />
        </section>

        <section style={cardStyle}>
          <h3 style={sectionTitleStyle}>Contract Settings</h3>
          <div style={fieldGridStyle}>
            <label style={fieldStyle}>
              <span>General labor cost</span>
              <input
                type="number"
                min="0"
                step="0.01"
                value={contract.generalLaborCost}
                onChange={(event) => setGeneralValue('generalLaborCost', Number(event.target.value))}
              />
            </label>
            <label style={fieldStyle}>
              <span>Overhead and profit</span>
              <input
                type="number"
                min="0"
                step="0.01"
                value={contract.generalOverheadAndProfit}
                onChange={(event) => setGeneralValue('generalOverheadAndProfit', Number(event.target.value))}
              />
            </label>
            <label style={fieldStyle}>
              <span>Round trip hours</span>
              <input type="number" value={contract.roundTrip} readOnly />
            </label>
            <label style={fieldStyle}>
              <span>Last updated</span>
              <input type="text" value={new Date(contract.updatedAt).toLocaleString()} readOnly />
            </label>
          </div>
        </section>

        <section style={cardStyle}>
          <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'baseline', gap: '1rem', flexWrap: 'wrap' }}>
            <h3 style={sectionTitleStyle}>Visit Planning</h3>
            <label style={{ ...fieldStyle, minWidth: '220px' }}>
              <span>Work day hours</span>
              <input
                type="number"
                min="1"
                step="0.5"
                value={contract.visitCalculations.workDayHours}
                onChange={(event) => updateVisitField('workDayHours', Number(event.target.value))}
              />
            </label>
          </div>

          <MonthlyValuesEditor
            label="Site visits"
            values={contract.visitCalculations.siteVisits}
            onChange={(month, value) => updateVisitMonth('siteVisits', month, value)}
          />
          <MonthlyValuesEditor
            label="Average crew"
            values={contract.visitCalculations.averageCrew}
            onChange={(month, value) => updateVisitMonth('averageCrew', month, value)}
          />
        </section>

        <LineItemsSection
          title="General Line Items"
          items={contract.generalLineItems}
          activities={activities}
          onAdd={addGeneralLineItem}
          onRemove={removeGeneralLineItem}
          onChange={updateGeneralLineItem}
          onMonthChange={updateGeneralLineItemMonth}
        />

        <LineItemsSection
          title="Technical Line Items"
          items={contract.technicalLineItems}
          activities={activities}
          technical
          onAdd={addTechnicalLineItem}
          onRemove={removeTechnicalLineItem}
          onChange={updateTechnicalLineItem}
          onMonthChange={updateTechnicalLineItemMonth}
        />
      </div>
    </EditLayout>
  );
}

function MetricCard({ label, value }: { label: string; value: string }) {
  return (
    <div style={{ background: '#ffffff', borderRadius: '16px', padding: '1rem 1.1rem', boxShadow: '0 8px 24px rgba(34, 43, 58, 0.07)' }}>
      <div style={{ color: '#67717f', fontSize: '0.85rem', marginBottom: '0.4rem' }}>{label}</div>
      <div style={{ fontSize: '1.2rem', fontWeight: 700 }}>{value}</div>
    </div>
  );
}

function MonthlyValuesEditor({
  label,
  values,
  onChange,
}: {
  label: string;
  values: MonthlyValues;
  onChange: (month: (typeof MONTHS)[number], value: number) => void;
}) {
  return (
    <div style={{ marginTop: '1.25rem' }}>
      <div style={{ fontWeight: 600, marginBottom: '0.6rem' }}>{label}</div>
      <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fill, minmax(80px, 1fr))', gap: '0.75rem' }}>
        {MONTHS.map((month) => (
          <label key={month} style={{ display: 'grid', gap: '0.35rem' }}>
            <span style={{ fontSize: '0.8rem', color: '#667085' }}>{monthLabel(month)}</span>
            <input
              type="number"
              min="0"
              step="0.1"
              value={values[month]}
              onChange={(event) => onChange(month, Number(event.target.value))}
            />
          </label>
        ))}
      </div>
    </div>
  );
}

function LineItemsSection({
  title,
  items,
  activities,
  technical,
  onAdd,
  onRemove,
  onChange,
  onMonthChange,
}: {
  title: string;
  items: ContractLineItem[] | TechnicalLineItem[];
  activities: Activity[];
  technical?: boolean;
  onAdd: () => void;
  onRemove: (index: number) => void;
  onChange: (index: number, field: any, value: any) => void;
  onMonthChange: (index: number, month: (typeof MONTHS)[number], value: number) => void;
}) {
  return (
    <section style={cardStyle}>
      <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', gap: '1rem', marginBottom: '1rem', flexWrap: 'wrap' }}>
        <h3 style={sectionTitleStyle}>{title}</h3>
        <button onClick={onAdd}>Add line item</button>
      </div>

      {items.length === 0 && <p style={{ color: '#667085' }}>No line items yet.</p>}

      {items.map((item, index) => {
        const technicalItem = item as TechnicalLineItem;

        return (
          <div key={item._id ?? `${title}-${index}`} style={{ border: '1px solid #d8dee8', borderRadius: '14px', padding: '1rem', marginBottom: '1rem', background: '#fbfcfe' }}>
            <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(170px, 1fr))', gap: '0.75rem', alignItems: 'end' }}>
              <label style={fieldStyle}>
                <span>Activity</span>
                <select value={item.activity} onChange={(event) => onChange(index, 'activity', event.target.value)}>
                  <option value="">Select activity</option>
                  {activities.map((activity) => (
                    <option key={activity._id} value={activity._id}>
                      {activity.title} ({activity.unit})
                    </option>
                  ))}
                </select>
              </label>
              <label style={fieldStyle}>
                <span>Quantity</span>
                <input
                  type="number"
                  min="0"
                  step="0.01"
                  value={item.quantity}
                  onChange={(event) => onChange(index, 'quantity', Number(event.target.value))}
                />
              </label>
              <label style={fieldStyle}>
                <span>Material markup</span>
                <input
                  type="number"
                  min="0"
                  step="0.01"
                  value={item.materialMarkup}
                  onChange={(event) => onChange(index, 'materialMarkup', Number(event.target.value))}
                />
              </label>
              {technical && (
                <label style={fieldStyle}>
                  <span>Tech crew size</span>
                  <input
                    type="number"
                    min="1"
                    step="1"
                    value={technicalItem.techCrewSize}
                    onChange={(event) => onChange(index, 'techCrewSize', Number(event.target.value))}
                  />
                </label>
              )}
              {technical && (
                <label style={fieldStyle}>
                  <span>Travel / visit</span>
                  <input
                    type="text"
                    value={technicalItem.techTravelPerVisit ?? ''}
                    onChange={(event) => onChange(index, 'techTravelPerVisit', event.target.value)}
                  />
                </label>
              )}
            </div>
            <div style={{ display: 'flex', justifyContent: 'flex-end', marginTop: '0.5rem' }}>
              <button onClick={() => onRemove(index)}>Remove</button>
            </div>

            <div style={{ marginTop: '0.75rem' }}>
              <div style={{ fontWeight: 600, fontSize: '0.85rem', color: '#667085', marginBottom: '0.5rem' }}>Monthly frequency</div>
              <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fill, minmax(72px, 1fr))', gap: '0.5rem' }}>
                {MONTHS.map((month) => (
                  <label key={month} style={{ display: 'grid', gap: '0.25rem' }}>
                    <span style={{ fontSize: '0.75rem', color: '#667085' }}>{monthLabel(month)}</span>
                    <input
                      type="number"
                      min="0"
                      step="0.1"
                      value={item.monthlyFrequency[month]}
                      onChange={(event) => onMonthChange(index, month, Number(event.target.value))}
                    />
                  </label>
                ))}
              </div>
              <div style={{ display: 'flex', gap: '2rem', flexWrap: 'wrap', marginTop: '0.75rem', padding: '0.6rem 0.75rem', background: '#f5f6fa', borderRadius: '8px', fontSize: '0.85rem' }}>
                <div><div style={{ color: '#667085', fontSize: '0.78rem' }}>Total Freq</div><strong>{Number(item.totalFreq ?? 0).toFixed(1)}</strong></div>
                <div><div style={{ color: '#667085', fontSize: '0.78rem' }}>Total MH</div><strong>{Number(item.totalMH ?? 0).toFixed(2)}</strong></div>
                <div><div style={{ color: '#667085', fontSize: '0.78rem' }}>Annual Price</div><strong>{formatCurrency(item.annualPrice)}</strong></div>
              </div>
            </div>
          </div>
        );
      })}
    </section>
  );
}

const cardStyle: React.CSSProperties = {
  background: '#ffffff',
  borderRadius: '18px',
  padding: '1.25rem',
  boxShadow: '0 8px 24px rgba(34, 43, 58, 0.07)',
};

const sectionTitleStyle: React.CSSProperties = {
  margin: 0,
  fontSize: '1.1rem',
};

const fieldGridStyle: React.CSSProperties = {
  display: 'grid',
  gridTemplateColumns: 'repeat(auto-fit, minmax(220px, 1fr))',
  gap: '1rem',
};

const fieldStyle: React.CSSProperties = {
  display: 'grid',
  gap: '0.35rem',
};