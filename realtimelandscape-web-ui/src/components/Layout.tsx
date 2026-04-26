import { ReactNode, useState, useEffect, useRef } from 'react';
import { NavLink, Link } from 'react-router-dom';
import { contractsApi, workordersApi } from '../api/client';
import styles from './Layout.module.css';

interface QuickMetric { label: string; value: string | number; to: string; }

function useQuickMetrics() {
  const [metrics, setMetrics] = useState<QuickMetric[]>([]);

  useEffect(() => {
    let ignore = false;
    Promise.all([contractsApi.stats(), workordersApi.stats()])
      .then(([cs, ws]) => {
        if (ignore) return;
        setMetrics([
          { label: 'Active Contracts',  value: cs.Active,     to: '/contracts'  },
          { label: 'Scheduled',         value: ws.Scheduled,  to: '/workorders' },
          { label: 'In Progress',       value: ws.InProgress, to: '/workorders' },
          { label: 'Pending Review',    value: ws.PendingCompletion + cs.PendingActivation + cs.PendingCompletion, to: '/workorders' },
        ]);
      })
      .catch(() => { /* silently ignore */ });
    return () => { ignore = true; };
  }, []);

  return metrics;
}

interface LayoutProps {
  children: ReactNode;
}

const NAV_ITEMS = [
  { to: '/',           label: 'Dashboard',  end: true  },
  { to: '/contracts',  label: 'Contracts',  end: false },
  { to: '/workorders', label: 'Workorders', end: false },
  { to: '/projects',   label: 'Projects',   end: false },
  { to: '/activities', label: 'Activities', end: false },
  { to: '/plants',     label: 'Plants',     end: false },
];

function HeaderMetrics() {
  const metrics = useQuickMetrics();
  if (metrics.length === 0) return <div className={styles.metricsStrip} />;
  return (
    <div className={styles.metricsStrip}>
      {metrics.map(m => (
        <Link key={m.label} to={m.to} className={styles.metricChip}>
          <span className={styles.metricValue}>{m.value}</span>
          <span className={styles.metricLabel}>{m.label}</span>
        </Link>
      ))}
    </div>
  );
}

export function Layout({ children }: LayoutProps) {
  const [open, setOpen] = useState(false);
  const drawerRef = useRef<HTMLElement>(null);

  // Close on outside click
  useEffect(() => {
    if (!open) return;
    const handler = (e: MouseEvent) => {
      if (drawerRef.current && !drawerRef.current.contains(e.target as Node)) {
        setOpen(false);
      }
    };
    document.addEventListener('mousedown', handler);
    return () => document.removeEventListener('mousedown', handler);
  }, [open]);

  // Close on Escape
  useEffect(() => {
    const handler = (e: KeyboardEvent) => { if (e.key === 'Escape') setOpen(false); };
    document.addEventListener('keydown', handler);
    return () => document.removeEventListener('keydown', handler);
  }, []);

  // Lock scroll when drawer is open
  useEffect(() => {
    document.body.style.overflow = open ? 'hidden' : '';
    return () => { document.body.style.overflow = ''; };
  }, [open]);

  return (
    <div className={styles.root}>
      <header className={styles.header}>
        <button
          className={styles.hamburger}
          onClick={() => setOpen(o => !o)}
          aria-expanded={open}
          aria-label={open ? 'Close menu' : 'Open menu'}
        >
          <span className={`${styles.bar} ${open ? styles.bar1Open : ''}`} />
          <span className={`${styles.bar} ${open ? styles.bar2Open : ''}`} />
          <span className={`${styles.bar} ${open ? styles.bar3Open : ''}`} />
        </button>
        <HeaderMetrics />
      </header>

      {open && (
        <div className={styles.backdrop} onClick={() => setOpen(false)} aria-hidden="true" />
      )}

      <nav
        ref={drawerRef}
        className={`${styles.drawer} ${open ? styles.drawerOpen : ''}`}
        aria-label="Main navigation"
      >
        <div className={styles.drawerTop}>
          <span className={styles.drawerLabel}>Navigation</span>
          <button className={styles.closeBtn} onClick={() => setOpen(false)} aria-label="Close menu">
            ✕
          </button>
        </div>
        <ul className={styles.navList}>
          {NAV_ITEMS.map(item => (
            <li key={item.to}>
              <NavLink
                to={item.to}
                end={item.end}
                className={({ isActive }) =>
                  isActive ? `${styles.navLink} ${styles.navLinkActive}` : styles.navLink
                }
                onClick={() => setOpen(false)}
              >
                {item.label}
              </NavLink>
            </li>
          ))}
        </ul>
      </nav>

      <main className={styles.main}>{children}</main>

      <footer className={styles.footer}>
        <span>© 2026 RealTime Landscape</span>
      </footer>
    </div>
  );
}
