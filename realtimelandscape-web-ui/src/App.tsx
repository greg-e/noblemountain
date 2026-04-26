import { BrowserRouter, Routes, Route } from 'react-router-dom';
import { Layout } from './components/Layout';
import { Dashboard } from './pages/Dashboard';
import { ContractsList } from './pages/ContractsList';
import { ContractDetail } from './pages/ContractDetail';
import { ContractNew } from './pages/ContractNew';
import { WorkordersList } from './pages/WorkordersList';
import { WorkorderDetail } from './pages/WorkorderDetail';
import { WorkorderNew } from './pages/WorkorderNew';
import { ActivitiesAdmin } from './pages/ActivitiesAdmin';
import { ProjectsAdmin } from './pages/ProjectsAdmin';
import { PlantsAdmin } from './pages/PlantsAdmin';

function NotFound() {
  return (
    <Layout>
      <div style={{ maxWidth: '1200px', margin: '0 auto' }}>
        <h2>404 - Page Not Found</h2>
        <p>The page you're looking for doesn't exist.</p>
        <a href="/">Back to Dashboard</a>
      </div>
    </Layout>
  );
}

export default function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<Dashboard />} />
        <Route path="/contracts" element={<ContractsList />} />
        <Route path="/contracts/new" element={<ContractNew />} />
        <Route path="/contracts/:id" element={<ContractDetail />} />
        <Route path="/workorders" element={<WorkordersList />} />
        <Route path="/workorders/new" element={<WorkorderNew />} />
        <Route path="/workorders/:id" element={<WorkorderDetail />} />
        <Route path="/activities" element={<ActivitiesAdmin />} />
        <Route path="/projects" element={<ProjectsAdmin />} />
        <Route path="/plants" element={<PlantsAdmin />} />
        <Route path="*" element={<NotFound />} />
      </Routes>
    </BrowserRouter>
  );
}
