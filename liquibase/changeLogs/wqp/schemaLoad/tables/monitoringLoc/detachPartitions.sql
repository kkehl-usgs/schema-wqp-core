-- This script perform step one of changing a partition parent table to logged.
-- Due to postgres bug, the partitions must be detached first,
-- table dropped and recreated, then the partitions reattached.

ALTER TABLE wqp.monitoring_loc DETACH PARTITION wqp.monitoring_loc_nwis;
ALTER TABLE wqp.monitoring_loc_nwis set logged;

ALTER TABLE wqp.monitoring_loc DETACH PARTITION wqp.monitoring_loc_stewards;
ALTER TABLE wqp.monitoring_loc_stewards set logged;

ALTER TABLE wqp.monitoring_loc DETACH PARTITION wqp.monitoring_loc_storet;
ALTER TABLE wqp.monitoring_loc_storet set logged;

