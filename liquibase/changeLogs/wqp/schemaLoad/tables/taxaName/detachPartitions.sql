-- This script perform step one of changing a partition parent table to logged.
-- Due to postgres bug, the partitions must be detached first,
-- table dropped and recreated, then the partitions reattached.

ALTER TABLE wqp.taxa_name DETACH PARTITION wqp.taxa_name_nwis;
ALTER TABLE wqp.taxa_name_nwis set logged;

ALTER TABLE wqp.taxa_name DETACH PARTITION wqp.taxa_name_stewards;
ALTER TABLE wqp.taxa_name_stewards set logged;

ALTER TABLE wqp.taxa_name DETACH PARTITION wqp.taxa_name_storet;
ALTER TABLE wqp.taxa_name_storet set logged;

