-- This script perform step one of changing a partition parent table to logged.
-- Due to postgres bug, the partitions must be detached first,
-- table dropped and recreated, then the partitions reattached.

ALTER TABLE wqp.state DETACH PARTITION wqp.state_nwis;
ALTER TABLE wqp.state_nwis set logged;

ALTER TABLE wqp.state DETACH PARTITION wqp.state_stewards;
ALTER TABLE wqp.state_stewards set logged;

ALTER TABLE wqp.state DETACH PARTITION wqp.state_storet;
ALTER TABLE wqp.state_storet set logged;

