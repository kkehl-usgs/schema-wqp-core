-- This script perform step one of changing a partition parent table to logged.
-- Due to postgres bug, the partitions must be detached first,
-- table dropped and recreated, then the partitions reattached.
ALTER TABLE wqp.project_object DETACH PARTITION wqp.project_object_biodata;
ALTER TABLE wqp.project_object_biodata set logged;

ALTER TABLE wqp.project_object DETACH PARTITION wqp.project_object_nwis;
ALTER TABLE wqp.project_object_nwis set logged;

ALTER TABLE wqp.project_object DETACH PARTITION wqp.project_object_stewards;
ALTER TABLE wqp.project_object_stewards set logged;

ALTER TABLE wqp.project_object DETACH PARTITION wqp.project_object_storet;
ALTER TABLE wqp.project_object_storet set logged;

