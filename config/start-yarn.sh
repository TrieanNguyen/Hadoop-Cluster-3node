#!/usr/bin/env bash

echo "starting yarn daemons"

yarn-daemon.sh --config $HADOOP_CONFIG start resourcemanager
yarn-daemon.sh --config $HADOOP_CONFIG start nodemanager

# eof
