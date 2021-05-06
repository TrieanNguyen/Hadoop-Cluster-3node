#!/usr/bin/env bash

echo "starting dfs daemons"

hadoop-daemon.sh --config $HADOOP_CONFIG start namenode
hadoop-daemon.sh --config $HADOOP_CONFIG start secondarynamenode
hadoop-daemon.sh --config $HADOOP_CONFIG start datanode

# eof
