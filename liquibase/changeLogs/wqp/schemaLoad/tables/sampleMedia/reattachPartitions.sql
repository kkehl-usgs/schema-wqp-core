-- This script perform last step  of changing a partition parent table to logged.
-- Reattching the table partitions.,
-- Due to postgres bug, the partitions must be detached first,
-- table dropped and recreated, then the partitions reattached.
ALTER TABLE wqp.sample_media ATTACH PARTITION wqp.sample_media_biodata for values in (4);
ALTER TABLE wqp.sample_media ATTACH PARTITION wqp.sample_media_nwis for values in (2);
ALTER TABLE wqp.sample_media ATTACH PARTITION wqp.sample_media_stewards for values in (1);
ALTER TABLE wqp.sample_media ATTACH PARTITION wqp.sample_media_storet for values in (3);
