#! /bin/bash

PROJECT_DIR=$1
[[  -z  $PROJECT_DIR  ]] && echo "\$1 param should be path to the root of the project \"fincon-service\"" && exit -1
[[ ! -d $PROJECT_DIR/scripts ]] && echo "The \"scripts\" folder isn\`t exists by path: $PROJECT_DIR/scripts" && exit -1
source $PROJECT_DIR/scripts/clean_distr.sh $PROJECT_DIR
source $PROJECT_DIR/scripts/database_init.sh $PROJECT_DIR
source $PROJECT_DIR/scripts/zip_distr.sh $PROJECT_DIR
