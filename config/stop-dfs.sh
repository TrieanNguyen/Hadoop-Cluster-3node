
#!/usr/bin/env bash

echo "stopping dfs daemons"

hadoop-daemon.sh --config $HADOOP_CONFIG stop namenode
hadoop-daemon.sh --config $HADOOP_CONFIG stop secondarynamenode
hadoop-daemon.sh --config $HADOOP_CONFIG stop datanode

# eof
