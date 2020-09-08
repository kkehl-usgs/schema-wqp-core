-- This script perform step one of changing a partition parent table to logged.
-- Due to postgres bug, the partitions must be detached first,
-- table dropped and recreated, then the partitions reattached.
ALTER TABLE wqp.station_sum DETACH PARTITION wqp.station_sum_biodata;
ALTER TABLE wqp.station_sum_biodata set logged;

ALTER TABLE wqp.station_sum DETACH PARTITION wqp.station_sum_nwis;
ALTER TABLE wqp.station_sum_nwis set logged;

ALTER TABLE wqp.station_sum DETACH PARTITION wqp.station_sum_stewards;
ALTER TABLE wqp.station_sum_stewards set logged;

ALTER TABLE wqp.station_sum DETACH PARTITION wqp.station_sum_storet;
ALTER TABLE wqp.station_sum_storet set logged;

