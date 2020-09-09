-- This script perform step one of changing a partition parent table to logged.
-- Due to postgres bug, the partitions must be detached first,
-- table dropped and recreated, then the partitions reattached.

ALTER TABLE wqp.bio_hab_metric DETACH PARTITION wqp.bio_hab_metric_nwis;
ALTER TABLE wqp.bio_hab_metric_nwis set logged;

ALTER TABLE wqp.bio_hab_metric DETACH PARTITION wqp.bio_hab_metric_stewards;
ALTER TABLE wqp.bio_hab_metric_stewards set logged;

ALTER TABLE wqp.bio_hab_metric DETACH PARTITION wqp.bio_hab_metric_storet;
ALTER TABLE wqp.bio_hab_metric_storet set logged;

