create unlogged table if not exists ${WQP_SCHEMA_NAME}.organization_sum_storet
partition of ${WQP_SCHEMA_NAME}.organization_sum
for values in (3)
with (fillfactor = 100)
;
