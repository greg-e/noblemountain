import { ReactNode } from 'react';
import { Link } from 'react-router-dom';
import styles from './EditLayout.module.css';

interface EditLayoutProps {
  children: ReactNode;
  backTo: string;
  backLabel: string;
  headerSlot?: ReactNode;
}

/**
 * Full-screen layout for detail/edit pages — no sidebar, maximum content width.
 * The sticky header contains a back-navigation link, an optional stats slot, and the app brand.
 */
export function EditLayout({ children, backTo, backLabel, headerSlot }: EditLayoutProps) {
  return (
    <div className={styles.root}>
      <header className={styles.header}>
        <Link to={backTo} className={styles.backLink}>
          <span className={styles.arrow}>&#8592;</span>
          <span>{backLabel}</span>
        </Link>
        {headerSlot && <div className={styles.headerSlot}>{headerSlot}</div>}
      </header>
      <main className={styles.main}>{children}</main>
    </div>
  );
}
