-- This script perform step one of changing a partition parent table to logged.
-- Due to postgres bug, the partitions must be detached first,
-- table dropped and recreated, then the partitions reattached.

ALTER TABLE wqp.result DETACH PARTITION wqp.result_nwis;
ALTER TABLE wqp.result_nwis set logged;

ALTER TABLE wqp.result DETACH PARTITION wqp.result_stewards;
ALTER TABLE wqp.result_stewards set logged;

ALTER TABLE wqp.result DETACH PARTITION wqp.result_storet;
ALTER TABLE wqp.result_storet set logged;

