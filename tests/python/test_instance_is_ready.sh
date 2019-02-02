#!/usr/bin/env bash

DIR=/tmp/learning-oracle
ORACLE_HOME=/u01/app/oracle/product/11.2.0/xe

OUTPUT=$(docker exec oracle /bin/bash -c "export ORACLE_HOME=$ORACLE_HOME ; pytest $DIR/tests/python/test_instance_is_ready.py")
if [[ $OUTPUT == *"ERROR"* ]]; then
    echo "FAILURE"
    echo "OUTPUT WAS: $OUTPUT"
    exit 1
fi
if [[ $OUTPUT == *"failed"* ]]; then
    echo "FAILURE"
    echo "OUTPUT WAS: $OUTPUT"
    exit 1
fi
if [[ $OUTPUT == *"no tests"* ]]; then
    echo "FAILURE"
    echo "OUTPUT WAS: $OUTPUT"
    exit 1
fi

echo "$OUTPUT"
echo "SUCCESS"
