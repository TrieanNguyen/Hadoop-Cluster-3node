#!/usr/bin/env bash

echo "stopping yarn daemons"

yarn-daemon.sh --config $HADOOP_CONFIG stop resourcemanager
yarn-daemon.sh --config $HADOOP_CONFIG stop nodemanager

# eof
