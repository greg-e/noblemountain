import { ReactNode, useState } from 'react';
import styles from './Layout.module.css';

interface LayoutProps {
  children: ReactNode;
}

export function Layout({ children }: LayoutProps) {
  const [sidebarOpen, setSidebarOpen] = useState(true);

  return (
    <div className={styles.layout}>
      <header className={styles.header}>
        <h1>RealTime Landscape</h1>
        <button
          className={styles.menuButton}
          onClick={() => setSidebarOpen(!sidebarOpen)}
        >
          ☰
        </button>
      </header>

      <div className={styles.container}>
        <nav className={`${styles.sidebar} ${sidebarOpen ? styles.open : ''}`}>
          <ul className={styles.navList}>
            <li><a href="/">Dashboard</a></li>
            <li><a href="/contracts">Contracts</a></li>
            <li><a href="/workorders">Workorders</a></li>
            <li><a href="/projects">Projects</a></li>
            <li><a href="/activities">Activities</a></li>
            <li><a href="/plants">Plants</a></li>
          </ul>
        </nav>

        <main className={styles.main}>
          {children}
        </main>
      </div>

      <footer className={styles.footer}>
        <p>© 2026 RealTime Landscape. All rights reserved.</p>
      </footer>
    </div>
  );
}
