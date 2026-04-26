// Central export for all Mongoose models.
// Import from here throughout the application.

export { Activity }        from './activity.schema';
export { Project }         from './project.schema';
export { Plant }           from './plant.schema';
export { Contract }        from './contract.schema';
export { Workorder }       from './workorder.schema';

// Re-export interfaces for typed usage in repositories / services
export type { IActivity }  from './activity.schema';
export type { IProject }   from './project.schema';
export type { IPlant }     from './plant.schema';
export type { IContract, ContractWorkflowStatus }    from './contract.schema';
export type { IWorkorder, WorkorderWorkflowStatus }  from './workorder.schema';
