#!/bin/bash

if [ ! -f db/data ]; then
  mkdir -p db/data;
fi;

if [ ! -f db/logs ]; then
  mkdir -p db/logs;
fi;

ulimit -n 1024
mongod -f db/mongodb.conf

echo
echo "To shutdown:"
echo "  mongo"
echo "  use admin"
echo "  db.shutdownServer();"
echo

