-- This script perform step one of changing a partition parent table to logged.
-- Due to postgres bug, the partitions must be detached first,
-- table dropped and recreated, then the partitions reattached.
ALTER TABLE wqp.activity_sum DETACH PARTITION wqp.activity_sum_biodata;
ALTER TABLE wqp.activity_sum_biodata set logged;

ALTER TABLE wqp.activity_sum DETACH PARTITION wqp.activity_sum_nwis;
ALTER TABLE wqp.activity_sum_nwis set logged;

ALTER TABLE wqp.activity_sum DETACH PARTITION wqp.activity_sum_stewards;
ALTER TABLE wqp.activity_sum_stewards set logged;

ALTER TABLE wqp.activity_sum DETACH PARTITION wqp.activity_sum_storet;
ALTER TABLE wqp.activity_sum_storet set logged;

