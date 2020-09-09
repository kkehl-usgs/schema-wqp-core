-- This script perform last step  of changing a partition parent table to logged.
-- Reattching the table partitions.,
-- Due to postgres bug, the partitions must be detached first,
-- table dropped and recreated, then the partitions reattached.
ALTER TABLE wqp.char_type ATTACH PARTITION wqp.char_type_nwis for values in (2);
ALTER TABLE wqp.char_type ATTACH PARTITION wqp.char_type_stewards for values in (1);
ALTER TABLE wqp.char_type ATTACH PARTITION wqp.char_type_storet for values in (3);
