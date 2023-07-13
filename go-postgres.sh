#!/bin/bash

shellckeck -o all
set -euo pipefail

cat << EOF
--------------------------------
Setup go project with postgresql
--------------------------------
EOF

PROJECT_DIRECTORY="$1"
CMD="cmd"
INTERNAL="internal"
MAIN_FILE="main.go"
DB_SETUP="db.go"

if [ -d $PROJECT_DIRECTORY ]; then
    echo "this directory already exists!"
    exit 1
fi


mkdir $PROJECT_DIRECTORY

cd $PROJECT_DIRECTORY

go mod init $PROJECT_DIRECTORY
go get github.com/lib/pq

mkdir $CMD
mkdir $INTERNAL


touch $CMD"/"$MAIN_FILE

touch $INTERNAL"/db/"$DB_SETUP

mkdir $INTERNAL"/pkg/"



