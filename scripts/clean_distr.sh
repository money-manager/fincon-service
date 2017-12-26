#! /bin/bash

PROJECT_DIR=$1
[[  -z  $PROJECT_DIR  ]] && echo "\$1 param should be path to the root of the project \"fincon-service\"" && exit -1
[[ -d $PROJECT_DIR/target ]] && rm -rf $PROJECT_DIR/target
rm -rf $PROJECT_DIR/db
echo "All artifacts cleaned"
