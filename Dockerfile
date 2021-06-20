#Images Base

FROM ubuntu
# Information Operatior

MAINTAINER 18133058@student.hcmute.edu.vn
#Config password for 3 machine
RUN apt-get update && apt-get  install -y vim openjdk-8-jdk wget
RUN echo "root:123" | chpasswd
RUN echo "root   ALL=(ALL)       ALL" >> /etc/sudoers
#Config Environment Java
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
ENV PATH $JAVA_HOME/bin:$PATH
#Config Environment Hadoop

RUN wget https://archive.apache.org/dist/hadoop/common/hadoop-2.7.7/hadoop-2.7.7.tar.gz
RUN tar -xzf hadoop-2.7.7.tar.gz
RUN mv hadoop-2.7.7 usr/local/hadoop
ENV HADOOP_HOME /usr/local/hadoop
ENV HADOOP_CONFIG $HADOOP_HOME/etc/hadoop
ENV PATH $HADOOP_HOME/sbin:$PATH
ENV PATH $HADOOP_HOME/bin:$PATH
#Config Java for Hadoop

RUN echo "export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64" >> $HADOOP_HOME/etc/hadoop/hadoop-env.sh
RUN /bin/bash -c "source ~/.bashrc"

#Config Hadoop

ADD config/core-site.xml  $HADOOP_HOME/etc/hadoop/core-site.xml
ADD config/hdfs-site.xml $HADOOP_HOME/etc/hadoop/hdfs-site.xml
ADD config/mapred-site.xml $HADOOP_HOME/etc/hadoop/mapred-site.xml
ADD config/yarn-site.xml $HADOOP_HOME/etc/hadoop/yarn-site.xml
ADD config/slaves $HADOOP_HOME/etc/hadoop/slaves
ADD config/start-dfs.sh $HADOOP_HOME/sbin
ADD config/start-yarn.sh $HADOOP_HOME/sbin
ADD config/stop-dfs.sh $HADOOP_HOME/sbin
ADD config/stop-yarn.sh $HADOOP_HOME/sbin

#config Spark
RUN wget https://downloads.apache.org/spark/spark-3.0.2/spark-3.0.2-bin-hadoop2.7.tgz
RUN tar xvf spark-3.0.2-bin-hadoop2.7.tgz
RUN mv spark-3.0.2-bin-hadoop2.7 /usr/local/spark
ENV SPARK_HOME /usr/local/spark
ENV PATH $SPARK_HOME/sbin:$PATH
ENV PATH $SPARK_HOME/bin:$PATH


ADD config/slaves $SPARK_HOME/conf/slaves
RUN echo "export SPARK_MASTER_HOST='172.16.0.2'" >> $SPARK_HOME/conf/spark-env.sh
RUN echo "export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64" >> $SPARK_HOME/conf/spark-env.sh
#Create folder for config later

RUN mkdir /home/hadoop
RUN mkdir /home/hadoop/tmp /home/hadoop/hdfs_name /home/hadoop/hdfs_data
EXPOSE 22
#Refresh Environment
ARG FORMAT_NAMENODE
RUN $FORMAT_NAMENODE
