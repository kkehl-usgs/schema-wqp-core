-- This script perform step one of changing a partition parent table to logged.
-- Due to postgres bug, the partitions must be detached first,
-- table dropped and recreated, then the partitions reattached.
ALTER TABLE wqp.char_name DETACH PARTITION wqp.char_name_biodata;
ALTER TABLE wqp.char_name_biodata set logged;

ALTER TABLE wqp.char_name DETACH PARTITION wqp.char_name_nwis;
ALTER TABLE wqp.char_name_nwis set logged;

ALTER TABLE wqp.char_name DETACH PARTITION wqp.char_name_stewards;
ALTER TABLE wqp.char_name_stewards set logged;

ALTER TABLE wqp.char_name DETACH PARTITION wqp.char_name_storet;
ALTER TABLE wqp.char_name_storet set logged;

