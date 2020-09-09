-- This script perform step one of changing a partition parent table to logged.
-- Due to postgres bug, the partitions must be detached first,
-- table dropped and recreated, then the partitions reattached.

ALTER TABLE wqp.station DETACH PARTITION wqp.station_nwis;
ALTER TABLE wqp.station_nwis set logged;

ALTER TABLE wqp.station DETACH PARTITION wqp.station_stewards;
ALTER TABLE wqp.station_stewards set logged;

ALTER TABLE wqp.station DETACH PARTITION wqp.station_storet;
ALTER TABLE wqp.station_storet set logged;

