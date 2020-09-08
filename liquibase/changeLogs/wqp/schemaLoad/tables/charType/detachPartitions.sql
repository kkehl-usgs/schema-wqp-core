-- This script perform step one of changing a partition parent table to logged.
-- Due to postgres bug, the partitions must be detached first,
-- table dropped and recreated, then the partitions reattached.
ALTER TABLE wqp.char_type DETACH PARTITION wqp.char_type_biodata;
ALTER TABLE wqp.char_type_biodata set logged;

ALTER TABLE wqp.char_type DETACH PARTITION wqp.char_type_nwis;
ALTER TABLE wqp.char_type_nwis set logged;

ALTER TABLE wqp.char_type DETACH PARTITION wqp.char_type_stewards;
ALTER TABLE wqp.char_type_stewards set logged;

ALTER TABLE wqp.char_type DETACH PARTITION wqp.char_type_storet;
ALTER TABLE wqp.char_type_storet set logged;

