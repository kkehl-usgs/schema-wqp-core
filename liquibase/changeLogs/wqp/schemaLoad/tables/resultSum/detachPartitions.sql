-- This script perform step one of changing a partition parent table to logged.
-- Due to postgres bug, the partitions must be detached first,
-- table dropped and recreated, then the partitions reattached.

ALTER TABLE wqp.result_sum DETACH PARTITION wqp.result_sum_nwis;
ALTER TABLE wqp.result_sum_nwis set logged;

ALTER TABLE wqp.result_sum DETACH PARTITION wqp.result_sum_stewards;
ALTER TABLE wqp.result_sum_stewards set logged;

ALTER TABLE wqp.result_sum DETACH PARTITION wqp.result_sum_storet;
ALTER TABLE wqp.result_sum_storet set logged;

