-- This script perform step one of changing a partition parent table to logged.
-- Due to postgres bug, the partitions must be detached first,
-- table dropped and recreated, then the partitions reattached.
ALTER TABLE wqp.organization DETACH PARTITION wqp.organization_biodata;
ALTER TABLE wqp.organization_biodata set logged;

ALTER TABLE wqp.organization DETACH PARTITION wqp.organization_nwis;
ALTER TABLE wqp.organization_nwis set logged;

ALTER TABLE wqp.organization DETACH PARTITION wqp.organization_stewards;
ALTER TABLE wqp.organization_stewards set logged;

ALTER TABLE wqp.organization DETACH PARTITION wqp.organization_storet;
ALTER TABLE wqp.organization_storet set logged;

