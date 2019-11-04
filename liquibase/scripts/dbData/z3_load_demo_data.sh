#!/bin/bash
# The set -e tells bash to exit immediately if a simple command fails.
# The set -o pipefail tells bash to set pipeline's return status to status of the last (rightmost) command.
# Both should be used in scripts meant to be called by Jenkins or another job runner.
set -e
set -o pipefail

gunzip ${LIQUIBASE_HOME}/wqp_core_all.tar.gz

pg_restore --dbname=postgresql://postgres:${POSTGRES_PASSWORD}@${WQP_DATABASE_ADDRESS}:5432/${WQP_DATABASE_NAME} -v -c --if-exists -F t ${LIQUIBASE_HOME}/wqp_core_all.tar

psql -v ON_ERROR_STOP=1 --dbname=postgresql://postgres:${POSTGRES_PASSWORD}@${WQP_DATABASE_ADDRESS}:5432/${WQP_DATABASE_NAME} -c "vacuum full;"
