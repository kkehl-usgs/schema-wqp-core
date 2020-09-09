-- This script perform last step  of changing a partition parent table to logged.
-- Reattching the table partitions.,
-- Due to postgres bug, the partitions must be detached first,
-- table dropped and recreated, then the partitions reattached.
ALTER TABLE wqp.char_name ATTACH PARTITION wqp.char_name_biodata for values in (4);
ALTER TABLE wqp.char_name ATTACH PARTITION wqp.char_name_nwis for values in (2);
ALTER TABLE wqp.char_name ATTACH PARTITION wqp.char_name_stewards for values in (1);
ALTER TABLE wqp.char_name ATTACH PARTITION wqp.char_name_storet for values in (3);
