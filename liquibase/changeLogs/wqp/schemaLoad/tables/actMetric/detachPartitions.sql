-- This script perform step one of changing a partition parent table to logged.
-- Due to postgres bug, the partitions must be detached first,
-- table dropped and recreated, then the partitions reattached.

ALTER TABLE wqp.act_metric DETACH PARTITION wqp.act_metric_nwis;
ALTER TABLE wqp.act_metric_nwis set logged;

ALTER TABLE wqp.act_metric DETACH PARTITION wqp.act_metric_stewards;
ALTER TABLE wqp.act_metric_stewards set logged;

ALTER TABLE wqp.act_metric DETACH PARTITION wqp.act_metric_storet;
ALTER TABLE wqp.act_metric_storet set logged;

