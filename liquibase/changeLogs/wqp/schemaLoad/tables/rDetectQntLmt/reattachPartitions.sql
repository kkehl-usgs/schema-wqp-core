-- This script perform last step  of changing a partition parent table to logged.
-- Reattching the table partitions.,
-- Due to postgres bug, the partitions must be detached first,
-- table dropped and recreated, then the partitions reattached.
ALTER TABLE wqp.r_detect_qnt_lmt ATTACH PARTITION wqp.r_detect_qnt_lmt_biodata for values in (4);
ALTER TABLE wqp.r_detect_qnt_lmt ATTACH PARTITION wqp.r_detect_qnt_lmt_nwis for values in (2);
ALTER TABLE wqp.r_detect_qnt_lmt ATTACH PARTITION wqp.r_detect_qnt_lmt_stewards for values in (1);
ALTER TABLE wqp.r_detect_qnt_lmt ATTACH PARTITION wqp.r_detect_qnt_lmt_storet for values in (3);
