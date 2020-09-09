-- This script perform step one of changing a partition parent table to logged.
-- Due to postgres bug, the partitions must be detached first,
-- table dropped and recreated, then the partitions reattached.

ALTER TABLE wqp.org_grouping DETACH PARTITION wqp.org_grouping_nwis;
ALTER TABLE wqp.org_grouping_nwis set logged;

ALTER TABLE wqp.org_grouping DETACH PARTITION wqp.org_grouping_stewards;
ALTER TABLE wqp.org_grouping_stewards set logged;

ALTER TABLE wqp.org_grouping DETACH PARTITION wqp.org_grouping_storet;
ALTER TABLE wqp.org_grouping_storet set logged;

