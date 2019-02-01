#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

docker run -d --name oracle -v $DIR/../sql:/tmp/sql -p 49161:1521 wnameless/oracle-xe-11g
