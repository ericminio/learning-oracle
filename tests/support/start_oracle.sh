#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

docker run --name oracle -v $DIR/../..:/tmp/learning-oracle ericminio/oracle:python
