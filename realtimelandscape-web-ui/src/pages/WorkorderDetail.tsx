import { useEffect, useState } from 'react';
import { useParams } from 'react-router-dom';
import { activitiesApi, workordersApi } from '../api/client';
import { Layout } from '../components/Layout';
import type { Activity, Workorder, WorkorderLineItem, WorkorderStatus } from '../types';

// ── Workflow transitions ────────────────────────────────────────────────────────

const STATUS_TRANSITIONS: Record<WorkorderStatus, WorkorderStatus[]> = {
  Draft:             ['PendingActivation', 'Cancelled'],
  PendingActivation: ['Scheduled', 'Draft', 'Cancelled'],
  Scheduled:         ['InProgress', 'Cancelled'],
  InProgress:        ['PendingCompletion', 'Scheduled'],
  PendingCompletion: ['Completed', 'InProgress'],
  Completed:         [],
  Cancelled:         [],
};

// ── Helpers ────────────────────────────────────────────────────────────────────

function normalizeLineItem(item: WorkorderLineItem): WorkorderLineItem {
  return {
    ...item,
    activity:                  String(item.activity ?? ''),
    quantity:                  Number(item.quantity ?? 0),
    laborCostPerManHour:       Number(item.laborCostPerManHour ?? 0),
    overheadAndProfitPerManHour: Number(item.overheadAndProfitPerManHour ?? 0),
    materialMarkupPercent:     Number(item.materialMarkupPercent ?? 0.35),
    totalLaborHours:           Number(item.totalLaborHours ?? 0),
    totalMaterialCost:         Number(item.totalMaterialCost ?? 0),
    totalLaborCost:            Number(item.totalLaborCost ?? 0),
    totalLaborPrice:           Number(item.totalLaborPrice ?? 0),
    totalMaterialPrice:        Number(item.totalMaterialPrice ?? 0),
    totalPrice:                Number(item.totalPrice ?? 0),
  };
}

function normalizeWorkorder(w: Workorder): Workorder {
  return {
    ...w,
    workDayHours: Number(w.workDayHours ?? 8),
    crewSize:     Number(w.crewSize ?? 1),
    lineItems:    (w.lineItems ?? []).map(normalizeLineItem),
    totalManHours:        Number(w.totalManHours ?? 0),
    totalVisits:          Number(w.totalVisits ?? 0),
    totalTravelHours:     Number(w.totalTravelHours ?? 0),
    travelPrice:          Number(w.travelPrice ?? 0),
    totalWorkorderPrice:  Number(w.totalWorkorderPrice ?? 0),
    totalWorkorderCost:   Number(w.totalWorkorderCost ?? 0),
    totalWorkorderProfit: Number(w.totalWorkorderProfit ?? 0),
    percentProfit:        Number(w.percentProfit ?? 0),
  };
}

function createLineItem(): WorkorderLineItem {
  return {
    activity:                  '',
    quantity:                  0,
    laborCostPerManHour:       0,
    overheadAndProfitPerManHour: 0,
    materialMarkupPercent:     0.35,
    totalLaborHours:           0,
    totalMaterialCost:         0,
    totalLaborCost:            0,
    totalLaborPrice:           0,
    totalMaterialPrice:        0,
    totalPrice:                0,
  };
}

function fmtCurrency(value: number | undefined): string {
  return new Intl.NumberFormat('en-US', {
    style: 'currency', currency: 'USD', maximumFractionDigits: 2,
  }).format(Number(value ?? 0));
}

function fmtPercent(value: number | undefined): string {
  return `${(Number(value ?? 0) * 100).toFixed(1)}%`;
}

function statusBadge(status: WorkorderStatus): React.CSSProperties {
  switch (status) {
    case 'Completed':   return { background: '#e7f6ea', color: '#256b3d' };
    case 'InProgress':  return { background: '#eef4ff', color: '#2a5bd7' };
    case 'Scheduled':   return { background: '#f0f4ff', color: '#3d52a0' };
    case 'Cancelled':   return { background: '#fbe7e7', color: '#9b1c1c' };
    default:            return { background: '#fff4d9', color: '#8a5a00' };
  }
}

// ── Component ───────────────────────────────────────────────────────────────────

export function WorkorderDetail() {
  const { id } = useParams<{ id: string }>();

  const [workorder, setWorkorder]     = useState<Workorder | null>(null);
  const [activities, setActivities]   = useState<Activity[]>([]);
  const [loading, setLoading]         = useState(true);
  const [saving, setSaving]           = useState(false);
  const [transitioningTo, setTransitioningTo] = useState<WorkorderStatus | null>(null);
  const [error, setError]             = useState<string | null>(null);
  const [notice, setNotice]           = useState<string | null>(null);

  // Load workorder + activities in parallel on mount
  useEffect(() => {
    if (!id) { setLoading(false); setError('Missing workorder id'); return; }
    let ignore = false;
    setLoading(true);

    (async () => {
      try {
        const [wo, acts] = await Promise.all([
          workordersApi.get(id),
          activitiesApi.list({ isActive: true }),
        ]);
        if (ignore) return;
        setWorkorder(normalizeWorkorder(wo));
        setActivities(acts);
        setError(null);
      } catch (err: any) {
        if (ignore) return;
        setError(err.error ?? 'Failed to load workorder');
      } finally {
        if (!ignore) setLoading(false);
      }
    })();

    return () => { ignore = true; };
  }, [id]);

  // ── Editors ──────────────────────────────────────────────────────────────────

  const patch = (updater: (w: Workorder) => Workorder) =>
    setWorkorder(w => (w ? updater(w) : w));

  const setTopLevel = (field: keyof Workorder, value: unknown) =>
    patch(w => ({ ...w, [field]: value }));

  const updateLineItem = <K extends keyof WorkorderLineItem>(
    index: number, field: K, value: WorkorderLineItem[K]
  ) =>
    patch(w => ({
      ...w,
      lineItems: w.lineItems.map((item, i) => (i === index ? { ...item, [field]: value } : item)),
    }));

  const addLineItem = () =>
    patch(w => ({ ...w, lineItems: [...w.lineItems, createLineItem()] }));

  const removeLineItem = (index: number) =>
    patch(w => ({ ...w, lineItems: w.lineItems.filter((_, i) => i !== index) }));

  // ── Save ─────────────────────────────────────────────────────────────────────

  const saveWorkorder = async () => {
    if (!workorder || !id) return;
    setSaving(true);
    setNotice(null);
    try {
      const updated = await workordersApi.update(id, {
        workDayHours:   Number(workorder.workDayHours),
        crewSize:       Number(workorder.crewSize),
        workorderNotes: workorder.workorderNotes ?? '',
        scheduledDate:  workorder.scheduledDate ?? undefined,
        lineItems:      workorder.lineItems.map(item => ({
          activity:                  item.activity,
          quantity:                  Number(item.quantity),
          laborCostPerManHour:       Number(item.laborCostPerManHour),
          overheadAndProfitPerManHour: Number(item.overheadAndProfitPerManHour),
          materialMarkupPercent:     Number(item.materialMarkupPercent),
        })),
      } as Partial<Workorder>);
      setWorkorder(normalizeWorkorder(updated));
      setError(null);
      setNotice('Workorder saved. Totals were recalculated on the server.');
    } catch (err: any) {
      setError(err.error ?? 'Failed to save workorder');
    } finally {
      setSaving(false);
    }
  };

  // ── Transition ───────────────────────────────────────────────────────────────

  const transitionWorkorder = async (to: WorkorderStatus) => {
    if (!workorder || !id) return;
    setTransitioningTo(to);
    setNotice(null);
    try {
      const updated = await workordersApi.transition(id, to);
      setWorkorder(normalizeWorkorder(updated));
      setError(null);
      setNotice(`Workorder moved to ${to}.`);
    } catch (err: any) {
      setError(err.error ?? 'Failed to transition workorder');
    } finally {
      setTransitioningTo(null);
    }
  };

  // ── Render ───────────────────────────────────────────────────────────────────

  if (loading) {
    return <Layout><div style={wrap}><p>Loading workorder...</p></div></Layout>;
  }

  if (error && !workorder) {
    return (
      <Layout>
        <div style={wrap}>
          <p style={{ color: '#9b1c1c' }}>Error: {error}</p>
          <a href="/workorders">Back to workorders</a>
        </div>
      </Layout>
    );
  }

  if (!workorder) return null;

  const badge = statusBadge(workorder.status);
  const allowedTransitions = STATUS_TRANSITIONS[workorder.status];
  const editable = !['Completed', 'Cancelled'].includes(workorder.status);

  return (
    <Layout>
      <div style={{ ...wrap, display: 'grid', gap: '1.5rem' }}>

        {/* ── Header ──────────────────────────────────────────────────────── */}
        <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'flex-start', flexWrap: 'wrap', gap: '1rem' }}>
          <div>
            <a href="/workorders" style={{ display: 'inline-block', marginBottom: '0.75rem' }}>← Back to workorders</a>
            <h2 style={{ margin: 0 }}>{workorder.workorderNumber}</h2>
            <p style={{ margin: '0.5rem 0 0', color: '#5d6470' }}>{workorder.projectDisplayName}</p>
            {workorder.scheduledDate && (
              <p style={{ margin: '0.25rem 0 0', color: '#5d6470', fontSize: '0.9rem' }}>
                Scheduled: {new Date(workorder.scheduledDate).toLocaleDateString()}
              </p>
            )}
          </div>

          <div style={{ display: 'flex', flexDirection: 'column', alignItems: 'flex-end', gap: '0.75rem' }}>
            <span style={{ padding: '0.4rem 0.75rem', borderRadius: '999px', fontWeight: 600, ...badge }}>
              {workorder.status}
            </span>
            <div style={{ display: 'flex', gap: '0.5rem', flexWrap: 'wrap', justifyContent: 'flex-end' }}>
              {editable && (
                <button onClick={saveWorkorder} disabled={saving || transitioningTo !== null}>
                  {saving ? 'Saving...' : 'Save Changes'}
                </button>
              )}
              {allowedTransitions.map(status => (
                <button
                  key={status}
                  onClick={() => transitionWorkorder(status)}
                  disabled={saving || transitioningTo !== null}
                  style={{
                    background:  status === 'Cancelled' ? '#fff0f0' : '#f7f8fb',
                    borderColor: status === 'Cancelled' ? '#e4b4b4' : '#d2d8e3',
                  }}
                >
                  {transitioningTo === status ? `Moving to ${status}...` : `Move to ${status}`}
                </button>
              ))}
            </div>
          </div>
        </div>

        {/* ── Notices ─────────────────────────────────────────────────────── */}
        {error  && <div style={{ padding: '0.9rem 1rem', borderRadius: '10px', background: '#fff1f1', color: '#9b1c1c' }}>{error}</div>}
        {notice && <div style={{ padding: '0.9rem 1rem', borderRadius: '10px', background: '#edf8ee', color: '#256b3d' }}>{notice}</div>}

        {/* ── Metrics ─────────────────────────────────────────────────────── */}
        <section style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(160px, 1fr))', gap: '1rem' }}>
          <MetricCard label="Total Price"    value={fmtCurrency(workorder.totalWorkorderPrice)} />
          <MetricCard label="Total Cost"     value={fmtCurrency(workorder.totalWorkorderCost)} />
          <MetricCard label="Gross Profit"   value={fmtCurrency(workorder.totalWorkorderProfit)} />
          <MetricCard label="Profit Margin"  value={fmtPercent(workorder.percentProfit)} />
          <MetricCard label="Man Hours"      value={workorder.totalManHours.toFixed(1)} />
          <MetricCard label="Visits"         value={String(workorder.totalVisits.toFixed(1))} />
          <MetricCard label="Travel Price"   value={fmtCurrency(workorder.travelPrice)} />
        </section>

        {/* ── Settings ────────────────────────────────────────────────────── */}
        <section style={card}>
          <h3 style={sectionTitle}>Workorder Settings</h3>
          <div style={fieldGrid}>
            <label style={field}>
              <span>Work day hours</span>
              <input
                type="number" min="1" step="0.5"
                value={workorder.workDayHours}
                disabled={!editable}
                onChange={e => setTopLevel('workDayHours', Number(e.target.value))}
              />
            </label>
            <label style={field}>
              <span>Crew size</span>
              <input
                type="number" min="1" step="1"
                value={workorder.crewSize}
                disabled={!editable}
                onChange={e => setTopLevel('crewSize', Number(e.target.value))}
              />
            </label>
            <label style={field}>
              <span>Scheduled date</span>
              <input
                type="date"
                value={workorder.scheduledDate ? workorder.scheduledDate.slice(0, 10) : ''}
                disabled={!editable}
                onChange={e => setTopLevel('scheduledDate', e.target.value || undefined)}
              />
            </label>
            <label style={field}>
              <span>Round trip hours</span>
              <input type="number" value={workorder.roundTrip} readOnly />
            </label>
            <label style={field}>
              <span>Last updated</span>
              <input type="text" value={new Date(workorder.updatedAt).toLocaleString()} readOnly />
            </label>
          </div>

          <label style={{ ...field, marginTop: '1rem' }}>
            <span>Notes</span>
            <textarea
              rows={3}
              value={workorder.workorderNotes ?? ''}
              disabled={!editable}
              onChange={e => setTopLevel('workorderNotes', e.target.value)}
              style={{ resize: 'vertical', fontFamily: 'inherit', fontSize: '1rem' }}
            />
          </label>
        </section>

        {/* ── Line Items ──────────────────────────────────────────────────── */}
        <section style={card}>
          <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '1rem', flexWrap: 'wrap', gap: '0.5rem' }}>
            <h3 style={sectionTitle}>Line Items</h3>
            {editable && <button onClick={addLineItem}>Add line item</button>}
          </div>

          {workorder.lineItems.length === 0 && (
            <p style={{ color: '#667085' }}>No line items yet.</p>
          )}

          {workorder.lineItems.map((item, index) => (
            <LineItemRow
              key={item._id ?? `wo-line-${index}`}
              item={item}
              index={index}
              activities={activities}
              editable={editable}
              onChange={updateLineItem}
              onRemove={removeLineItem}
            />
          ))}

          {/* Totals row */}
          {workorder.lineItems.length > 0 && (
            <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(140px, 1fr))', gap: '0.75rem', marginTop: '1rem', padding: '0.75rem', background: '#f7f8fb', borderRadius: '10px' }}>
              <div><span style={totalLabel}>Total Labor Hrs</span><br /><strong>{workorder.totalManHours.toFixed(1)}</strong></div>
              <div><span style={totalLabel}>Travel Hrs</span><br /><strong>{workorder.totalTravelHours.toFixed(1)}</strong></div>
              <div><span style={totalLabel}>Travel Price</span><br /><strong>{fmtCurrency(workorder.travelPrice)}</strong></div>
              <div><span style={totalLabel}>Subtotal</span><br /><strong>{fmtCurrency(workorder.totalWorkorderPrice)}</strong></div>
              <div><span style={totalLabel}>Total Cost</span><br /><strong>{fmtCurrency(workorder.totalWorkorderCost)}</strong></div>
              <div><span style={totalLabel}>Gross Profit</span><br /><strong>{fmtCurrency(workorder.totalWorkorderProfit)}</strong></div>
              <div><span style={totalLabel}>Profit %</span><br /><strong>{fmtPercent(workorder.percentProfit)}</strong></div>
            </div>
          )}
        </section>
      </div>
    </Layout>
  );
}

// ── Sub-components ──────────────────────────────────────────────────────────────

function MetricCard({ label, value }: { label: string; value: string }) {
  return (
    <div style={{ background: '#ffffff', borderRadius: '16px', padding: '1rem 1.1rem', boxShadow: '0 8px 24px rgba(34,43,58,0.07)' }}>
      <div style={{ color: '#67717f', fontSize: '0.85rem', marginBottom: '0.4rem' }}>{label}</div>
      <div style={{ fontSize: '1.2rem', fontWeight: 700 }}>{value}</div>
    </div>
  );
}

function LineItemRow({
  item, index, activities, editable, onChange, onRemove,
}: {
  item: WorkorderLineItem;
  index: number;
  activities: Activity[];
  editable: boolean;
  onChange: <K extends keyof WorkorderLineItem>(i: number, f: K, v: WorkorderLineItem[K]) => void;
  onRemove: (i: number) => void;
}) {
  const num = (field: keyof WorkorderLineItem) =>
    (e: React.ChangeEvent<HTMLInputElement>) =>
      onChange(index, field, Number(e.target.value) as WorkorderLineItem[typeof field]);

  return (
    <div style={{ border: '1px solid #d8dee8', borderRadius: '14px', padding: '1rem', marginBottom: '1rem', background: '#fbfcfe' }}>
      <div style={{ display: 'grid', gridTemplateColumns: 'minmax(240px, 2fr) repeat(4, minmax(120px, 1fr)) auto', gap: '0.75rem', alignItems: 'end' }}>
        <label style={field}>
          <span>Activity</span>
          <select
            value={item.activity}
            disabled={!editable}
            onChange={e => onChange(index, 'activity', e.target.value)}
          >
            <option value="">Select activity</option>
            {activities.map(a => (
              <option key={a._id} value={a._id}>{a.title} ({a.unit})</option>
            ))}
          </select>
        </label>

        <label style={field}>
          <span>Quantity</span>
          <input type="number" min="0" step="0.01" value={item.quantity} disabled={!editable} onChange={num('quantity')} />
        </label>

        <label style={field}>
          <span>Labor cost / hr</span>
          <input type="number" min="0" step="0.01" value={item.laborCostPerManHour} disabled={!editable} onChange={num('laborCostPerManHour')} />
        </label>

        <label style={field}>
          <span>Overhead + profit / hr</span>
          <input type="number" min="0" step="0.01" value={item.overheadAndProfitPerManHour} disabled={!editable} onChange={num('overheadAndProfitPerManHour')} />
        </label>

        <label style={field}>
          <span>Material markup</span>
          <input type="number" min="0" step="0.01" value={item.materialMarkupPercent} disabled={!editable} onChange={num('materialMarkupPercent')} />
        </label>

        {editable && (
          <button onClick={() => onRemove(index)} style={{ alignSelf: 'center' }}>Remove</button>
        )}
      </div>

      {/* Calculated summary row */}
      <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(120px, 1fr))', gap: '0.5rem', marginTop: '0.75rem', padding: '0.6rem 0.75rem', background: '#f5f6fa', borderRadius: '8px', fontSize: '0.85rem' }}>
        <div><span style={totalLabel}>Labor Hrs</span><br />{Number(item.totalLaborHours).toFixed(2)}</div>
        <div><span style={totalLabel}>Labor Cost</span><br />{fmtCurrency(item.totalLaborCost)}</div>
        <div><span style={totalLabel}>Labor Price</span><br />{fmtCurrency(item.totalLaborPrice)}</div>
        <div><span style={totalLabel}>Material Cost</span><br />{fmtCurrency(item.totalMaterialCost)}</div>
        <div><span style={totalLabel}>Material Price</span><br />{fmtCurrency(item.totalMaterialPrice)}</div>
        <div><span style={totalLabel}>Total Price</span><br /><strong>{fmtCurrency(item.totalPrice)}</strong></div>
      </div>
    </div>
  );
}

// ── Style constants ─────────────────────────────────────────────────────────────

const wrap: React.CSSProperties  = { maxWidth: '1280px', margin: '0 auto' };
const card: React.CSSProperties  = { background: '#ffffff', borderRadius: '18px', padding: '1.25rem', boxShadow: '0 8px 24px rgba(34,43,58,0.07)' };
const sectionTitle: React.CSSProperties = { margin: 0, fontSize: '1.1rem' };
const fieldGrid: React.CSSProperties   = { display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(200px, 1fr))', gap: '1rem' };
const field: React.CSSProperties       = { display: 'grid', gap: '0.35rem' };
const totalLabel: React.CSSProperties  = { color: '#667085', fontSize: '0.8rem' };
