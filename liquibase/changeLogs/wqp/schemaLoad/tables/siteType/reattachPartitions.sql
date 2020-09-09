-- This script perform last step  of changing a partition parent table to logged.
-- Reattching the table partitions.,
-- Due to postgres bug, the partitions must be detached first,
-- table dropped and recreated, then the partitions reattached.
ALTER TABLE wqp.site_type ATTACH PARTITION wqp.site_type_biodata for values in (4);
ALTER TABLE wqp.site_type ATTACH PARTITION wqp.site_type_nwis for values in (2);
ALTER TABLE wqp.site_type ATTACH PARTITION wqp.site_type_stewards for values in (1);
ALTER TABLE wqp.site_type ATTACH PARTITION wqp.site_type_storet for values in (3);
