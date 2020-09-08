-- This script perform step one of changing a partition parent table to logged.
-- Due to postgres bug, the partitions must be detached first,
-- table dropped and recreated, then the partitions reattached.
ALTER TABLE wqp.county DETACH PARTITION wqp.county_biodata;
ALTER TABLE wqp.county_biodata set logged;

ALTER TABLE wqp.county DETACH PARTITION wqp.county_nwis;
ALTER TABLE wqp.county_nwis set logged;

ALTER TABLE wqp.county DETACH PARTITION wqp.county_stewards;
ALTER TABLE wqp.county_stewards set logged;

ALTER TABLE wqp.county DETACH PARTITION wqp.county_storet;
ALTER TABLE wqp.county_storet set logged;

