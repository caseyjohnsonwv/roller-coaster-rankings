#!/bin/bash

SCRIPT_PATH=$(dirname $(readlink -f $0))

pip install -r ${SCRIPT_PATH}/../requirements.txt --no-cache-dir

cd ${SCRIPT_PATH}/../data && \
rm coasterbot.db || true && \
for f in *.csv
  do
    sqlite-utils insert coasterbot.db ${f%.*} $f --csv
  done




