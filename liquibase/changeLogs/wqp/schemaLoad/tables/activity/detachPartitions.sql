-- This script perform step one of changing a partition parent table to logged.
-- Due to postgres bug, the partitions must be detached first,
-- table dropped and recreated, then the partitions reattached.
ALTER TABLE wqp.activity DETACH PARTITION wqp.activity_biodata;
ALTER TABLE wqp.activity_biodata set logged;

ALTER TABLE wqp.activity DETACH PARTITION wqp.activity_nwis;
ALTER TABLE wqp.activity_nwis set logged;

ALTER TABLE wqp.activity DETACH PARTITION wqp.activity_stewards;
ALTER TABLE wqp.activity_stewards set logged;

ALTER TABLE wqp.activity DETACH PARTITION wqp.activity_storet;
ALTER TABLE wqp.activity_storet set logged;

