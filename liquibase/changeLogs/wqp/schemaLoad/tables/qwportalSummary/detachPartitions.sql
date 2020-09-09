-- This script perform step one of changing a partition parent table to logged.
-- Due to postgres bug, the partitions must be detached first,
-- table dropped and recreated, then the partitions reattached.

ALTER TABLE wqp.qwportal_summary DETACH PARTITION wqp.qwportal_summary_nwis;
ALTER TABLE wqp.qwportal_summary_nwis set logged;

ALTER TABLE wqp.qwportal_summary DETACH PARTITION wqp.qwportal_summary_stewards;
ALTER TABLE wqp.qwportal_summary_stewards set logged;

ALTER TABLE wqp.qwportal_summary DETACH PARTITION wqp.qwportal_summary_storet;
ALTER TABLE wqp.qwportal_summary_storet set logged;

