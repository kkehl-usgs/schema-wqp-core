-- This script perform step one of changing a partition parent table to logged.
-- Due to postgres bug, the partitions must be detached first,
-- table dropped and recreated, then the partitions reattached.

ALTER TABLE wqp.sample_media DETACH PARTITION wqp.sample_media_nwis;
ALTER TABLE wqp.sample_media_nwis set logged;

ALTER TABLE wqp.sample_media DETACH PARTITION wqp.sample_media_stewards;
ALTER TABLE wqp.sample_media_stewards set logged;

ALTER TABLE wqp.sample_media DETACH PARTITION wqp.sample_media_storet;
ALTER TABLE wqp.sample_media_storet set logged;

