#!/bin/bash
export PGPASSWORD='Postgres1'
BASEDIR=$(dirname $0)
DATABASE=homecrafted

PSQL_PATH="C:/Program Files/PostgreSQL/17/bin/psql"
CREATEDB_PATH="C:/Program Files/PostgreSQL/17/bin/createdb"

"$PSQL_PATH" -U postgres -f "$BASEDIR/dropdb.sql" &&
"$CREATEDB_PATH" -U postgres $DATABASE &&
"C:/Program Files/PostgreSQL/17/bin/psql" -U postgres -d $DATABASE -f "$BASEDIR/schema.sql" &&
"C:/Program Files/PostgreSQL/17/bin/psql" -U postgres -d $DATABASE -f "$BASEDIR/data.sql" &&
"C:/Program Files/PostgreSQL/17/bin/psql" -U postgres -d $DATABASE -f "$BASEDIR/user.sql"
