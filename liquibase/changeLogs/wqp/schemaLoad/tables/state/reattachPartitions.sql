-- This script perform last step  of changing a partition parent table to logged.
-- Reattching the table partitions.,
-- Due to postgres bug, the partitions must be detached first,
-- table dropped and recreated, then the partitions reattached.
ALTER TABLE wqp.state ATTACH PARTITION wqp.state_nwis for values in (2);
ALTER TABLE wqp.state ATTACH PARTITION wqp.state_stewards for values in (1);
ALTER TABLE wqp.state ATTACH PARTITION wqp.state_storet for values in (3);
