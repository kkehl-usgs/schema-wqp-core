-- This script perform step one of changing a partition parent table to logged.
-- Due to postgres bug, the partitions must be detached first,
-- table dropped and recreated, then the partitions reattached.

ALTER TABLE wqp.assemblage DETACH PARTITION wqp.assemblage_nwis;
ALTER TABLE wqp.assemblage_nwis set logged;

ALTER TABLE wqp.assemblage DETACH PARTITION wqp.assemblage_stewards;
ALTER TABLE wqp.assemblage_stewards set logged;

ALTER TABLE wqp.assemblage DETACH PARTITION wqp.assemblage_storet;
ALTER TABLE wqp.assemblage_storet set logged;

