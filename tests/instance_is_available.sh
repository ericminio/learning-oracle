#!/usr/bin/env bash

DIR=/tmp/sql

OUTPUT=$(docker exec oracle /tmp/sql/sqlplus.sh $DIR/select.connection.info.sql)
if [[ $OUTPUT != *"XE		 OPEN	      ACTIVE"* ]]; then
    echo "FAILURE"
    echo "OUTPUT WAS: $OUTPUT"
    exit 1
fi

OUTPUT=$(docker exec oracle /tmp/sql/sqlplus.sh $DIR/try.some.data.stuff.sql)
if [[ $OUTPUT != *"3 new day"* ]]; then
    echo "FAILURE"
    echo "OUTPUT WAS: $OUTPUT"
    exit 1
fi

echo "$OUTPUT"
echo "SUCCESS"
