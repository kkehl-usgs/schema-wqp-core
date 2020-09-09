-- This script perform step one of changing a partition parent table to logged.
-- Due to postgres bug, the partitions must be detached first,
-- table dropped and recreated, then the partitions reattached.
ALTER TABLE wqp.project_dim DETACH PARTITION wqp.project_dim_biodata;
ALTER TABLE wqp.project_dim_biodata set logged;

ALTER TABLE wqp.project_dim DETACH PARTITION wqp.project_dim_nwis;
ALTER TABLE wqp.project_dim_nwis set logged;

ALTER TABLE wqp.project_dim DETACH PARTITION wqp.project_dim_stewards;
ALTER TABLE wqp.project_dim_stewards set logged;

ALTER TABLE wqp.project_dim DETACH PARTITION wqp.project_dim_storet;
ALTER TABLE wqp.project_dim_storet set logged;

