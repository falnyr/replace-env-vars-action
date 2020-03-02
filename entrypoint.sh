#!/usr/bin/env sh

set -e
FILEPATH=$1

if [ -z $FILEPATH ]; then
  echo 'The path to the file is required'
  exit 1
fi

envsubst < $FILEPATH > tmp && mv tmp $FILEPATH
