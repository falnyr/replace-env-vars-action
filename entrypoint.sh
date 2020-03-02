#!/usr/bin/env sh

set -e
FILENAME=$1

if [ -z $FILENAME ]; then
  echo 'The path to the file is required'
  exit 1
fi

for var in $(env); do
  IFS='=' read -r -a array <<< "$var"
  echo "Setting ${array[0]} to ${array[1]}"
  sed -i "s~__${array[0]}__~${array[1]}~g" $FILENAME
done
