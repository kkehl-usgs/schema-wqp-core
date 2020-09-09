-- This script perform step one of changing a partition parent table to logged.
-- Due to postgres bug, the partitions must be detached first,
-- table dropped and recreated, then the partitions reattached.

ALTER TABLE wqp.project DETACH PARTITION wqp.project_nwis;
ALTER TABLE wqp.project_nwis set logged;

ALTER TABLE wqp.project DETACH PARTITION wqp.project_stewards;
ALTER TABLE wqp.project_stewards set logged;

ALTER TABLE wqp.project DETACH PARTITION wqp.project_storet;
ALTER TABLE wqp.project_storet set logged;

