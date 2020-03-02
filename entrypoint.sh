#!/usr/bin/env sh

set -e
FILENAME=$1

if [ -z $FILENAME ]; then
  echo 'The path to the file is required'
  exit 1
fi

envsubst < $FILENAME > tmp && mv tmp $FILENAME
