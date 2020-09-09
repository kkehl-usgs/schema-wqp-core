-- This script perform step one of changing a partition parent table to logged.
-- Due to postgres bug, the partitions must be detached first,
-- table dropped and recreated, then the partitions reattached.
ALTER TABLE wqp.project_data DETACH PARTITION wqp.project_data_biodata;
ALTER TABLE wqp.project_data_biodata set logged;

ALTER TABLE wqp.project_data DETACH PARTITION wqp.project_data_nwis;
ALTER TABLE wqp.project_data_nwis set logged;

ALTER TABLE wqp.project_data DETACH PARTITION wqp.project_data_stewards;
ALTER TABLE wqp.project_data_stewards set logged;

ALTER TABLE wqp.project_data DETACH PARTITION wqp.project_data_storet;
ALTER TABLE wqp.project_data_storet set logged;

