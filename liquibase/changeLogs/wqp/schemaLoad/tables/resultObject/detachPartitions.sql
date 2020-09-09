-- This script perform step one of changing a partition parent table to logged.
-- Due to postgres bug, the partitions must be detached first,
-- table dropped and recreated, then the partitions reattached.
ALTER TABLE wqp.result_object DETACH PARTITION wqp.result_object_biodata;
ALTER TABLE wqp.result_object_biodata set logged;

ALTER TABLE wqp.result_object DETACH PARTITION wqp.result_object_nwis;
ALTER TABLE wqp.result_object_nwis set logged;

ALTER TABLE wqp.result_object DETACH PARTITION wqp.result_object_stewards;
ALTER TABLE wqp.result_object_stewards set logged;

ALTER TABLE wqp.result_object DETACH PARTITION wqp.result_object_storet;
ALTER TABLE wqp.result_object_storet set logged;

