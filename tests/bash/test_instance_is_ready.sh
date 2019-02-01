#!/usr/bin/env bash

DIR=/tmp/learning-oracle
SQLPLUS=$DIR/tests/bash/support/sqlplus.sh
SQLDIR=$DIR/tests/bash/sql

OUTPUT=$(docker exec oracle $SQLPLUS $SQLDIR/select.connection.info.sql)
if [[ $OUTPUT != *"XE		 OPEN	      ACTIVE"* ]]; then
    echo "FAILURE"
    echo "OUTPUT WAS: $OUTPUT"
    exit 1
fi

OUTPUT=$(docker exec oracle $SQLPLUS $SQLDIR/try.some.data.stuff.sql)
if [[ $OUTPUT != *"3 new day"* ]]; then
    echo "FAILURE"
    echo "OUTPUT WAS: $OUTPUT"
    exit 1
fi

echo "$OUTPUT"
echo "SUCCESS"
