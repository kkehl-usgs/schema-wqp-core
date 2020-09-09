-- This script perform step one of changing a partition parent table to logged.
-- Due to postgres bug, the partitions must be detached first,
-- table dropped and recreated, then the partitions reattached.

ALTER TABLE wqp.r_detect_qnt_lmt DETACH PARTITION wqp.r_detect_qnt_lmt_nwis;
ALTER TABLE wqp.r_detect_qnt_lmt_nwis set logged;

ALTER TABLE wqp.r_detect_qnt_lmt DETACH PARTITION wqp.r_detect_qnt_lmt_stewards;
ALTER TABLE wqp.r_detect_qnt_lmt_stewards set logged;

ALTER TABLE wqp.r_detect_qnt_lmt DETACH PARTITION wqp.r_detect_qnt_lmt_storet;
ALTER TABLE wqp.r_detect_qnt_lmt_storet set logged;

