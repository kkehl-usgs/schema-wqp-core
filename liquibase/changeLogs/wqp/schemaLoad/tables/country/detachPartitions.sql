-- This script perform step one of changing a partition parent table to logged.
-- Due to postgres bug, the partitions must be detached first,
-- table dropped and recreated, then the partitions reattached.

ALTER TABLE wqp.country DETACH PARTITION wqp.country_nwis;
ALTER TABLE wqp.country_nwis set logged;

ALTER TABLE wqp.country DETACH PARTITION wqp.country_stewards;
ALTER TABLE wqp.country_stewards set logged;

ALTER TABLE wqp.country DETACH PARTITION wqp.country_storet;
ALTER TABLE wqp.country_storet set logged;

