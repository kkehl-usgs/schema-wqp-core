-- This script perform step one of changing a partition parent table to logged.
-- Due to postgres bug, the partitions must be detached first,
-- table dropped and recreated, then the partitions reattached.
ALTER TABLE wqp.site_type DETACH PARTITION wqp.site_type_biodata;
ALTER TABLE wqp.site_type_biodata set logged;

ALTER TABLE wqp.site_type DETACH PARTITION wqp.site_type_nwis;
ALTER TABLE wqp.site_type_nwis set logged;

ALTER TABLE wqp.site_type DETACH PARTITION wqp.site_type_stewards;
ALTER TABLE wqp.site_type_stewards set logged;

ALTER TABLE wqp.site_type DETACH PARTITION wqp.site_type_storet;
ALTER TABLE wqp.site_type_storet set logged;

