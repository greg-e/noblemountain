import { ReactNode } from 'react';
import { Link } from 'react-router-dom';
import styles from './EditLayout.module.css';

interface EditLayoutProps {
  children: ReactNode;
  backTo: string;
  backLabel: string;
}

/**
 * Full-screen layout for detail/edit pages — no sidebar, maximum content width.
 * The sticky header contains only a back-navigation link and the app brand.
 */
export function EditLayout({ children, backTo, backLabel }: EditLayoutProps) {
  return (
    <div className={styles.root}>
      <header className={styles.header}>
        <Link to={backTo} className={styles.backLink}>
          <span className={styles.arrow}>&#8592;</span>
          <span>{backLabel}</span>
        </Link>
        <Link to="/" className={styles.brand}>RealTime Landscape</Link>
      </header>
      <main className={styles.main}>{children}</main>
    </div>
  );
}
