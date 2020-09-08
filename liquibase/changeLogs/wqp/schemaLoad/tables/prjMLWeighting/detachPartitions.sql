-- This script perform step one of changing a partition parent table to logged.
-- Due to postgres bug, the partitions must be detached first,
-- table dropped and recreated, then the partitions reattached.
ALTER TABLE wqp.prj_ml_weighting DETACH PARTITION wqp.prj_ml_weighting_biodata;
ALTER TABLE wqp.prj_ml_weighting_biodata set logged;

ALTER TABLE wqp.prj_ml_weighting DETACH PARTITION wqp.prj_ml_weighting_nwis;
ALTER TABLE wqp.prj_ml_weighting_nwis set logged;

ALTER TABLE wqp.prj_ml_weighting DETACH PARTITION wqp.prj_ml_weighting_stewards;
ALTER TABLE wqp.prj_ml_weighting_stewards set logged;

ALTER TABLE wqp.prj_ml_weighting DETACH PARTITION wqp.prj_ml_weighting_storet;
ALTER TABLE wqp.prj_ml_weighting_storet set logged;

