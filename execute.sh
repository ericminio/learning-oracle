#!/usr/bin/env bash

DIR=/tmp/sql

docker exec oracle /tmp/sql/sqlplus.sh $DIR/select.connection.info.sql
docker exec oracle /tmp/sql/sqlplus.sh $DIR/try.some.data.stuff.sql
