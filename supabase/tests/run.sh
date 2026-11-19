#!/usr/bin/env bash
# Applies schema + migrations + seeds + library to a scratch PostgreSQL and runs hosting_tests.sql.
# Needs a local postgres (no Supabase required). Usage: PGHOST=localhost PGPORT=5432 PGUSER=postgres ./run.sh
set -e; D="$(cd "$(dirname "$0")/.." && pwd)"; DB=igeeks_test
psql -q -c "drop database if exists $DB" -c "create database $DB"
for f in tests/supabase_shim.sql schema.sql migration_4.sql migration_5.sql migration_6.sql seed_questions.sql library/01_exam_packages.sql tests/hosting_tests.sql; do echo "== $f"; psql -q -d $DB -f "$D/$f" 2>&1 | grep -v NOTICE; done
