-- This script perform step one of changing a partition parent table to logged.
-- Due to postgres bug, the partitions must be detached first,
-- table dropped and recreated, then the partitions reattached.
ALTER TABLE wqp.station_object DETACH PARTITION wqp.station_object_biodata;
ALTER TABLE wqp.station_object_biodata set logged;

ALTER TABLE wqp.station_object DETACH PARTITION wqp.station_object_nwis;
ALTER TABLE wqp.station_object_nwis set logged;

ALTER TABLE wqp.station_object DETACH PARTITION wqp.station_object_stewards;
ALTER TABLE wqp.station_object_stewards set logged;

ALTER TABLE wqp.station_object DETACH PARTITION wqp.station_object_storet;
ALTER TABLE wqp.station_object_storet set logged;

