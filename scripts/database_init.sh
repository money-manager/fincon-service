#! /bin/bash
PROJECT_DIR=$1
[[  -z  $PROJECT_DIR  ]] && echo "\$1 param should be path to the root of the project \"fincon-service\"" && exit -1

DB_NAME='data.db'
DB_PATH=$PROJECT_DIR/db
DB=$DB_PATH/$DB_NAME

[[ ! -d $DB_PATH ]] && mkdir $DB_PATH

echo ".exit" | sqlite3 $DB && echo "$DB is created"
echo "CREATE TABLE test(ID INTEGER PRIMARY KEY AUTOINCREMENT, COMMENT TEXT NOT NULL);" | sqlite3 $DB && echo "Table is created"
echo "INSERT INTO test (COMMENT) VALUES ('Line from the database=)');" | sqlite3 $DB && echo "Demo data is inserted to the $DB"

