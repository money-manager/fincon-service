#! /bin/bash

PROJECT_DIR=$1
[[  -z  $PROJECT_DIR  ]] && echo "\$1 param should be path to the root of the project \"fincon-service\"" && exit -1

mkdir $PROJECT_DIR/target

zip -r $PROJECT_DIR/target/distr.zip $PROJECT_DIR/package.json $PROJECT_DIR/db $PROJECT_DIR/src 
