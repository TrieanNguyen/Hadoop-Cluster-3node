# HADOOP WITH DOCKER
## INSTRODUCTION
* Here, the Hadoop is cluster 3 node include: 1 master, 2 slave(slave1 and slave2)
* Conditon, the versions Java, Hadoop, Docker include: 
 <table>
 
|  HADOOP  |  2.7.7   |
| ---------|----------|
|   JAVA   |    1.8   |
|  DOCKER  |  20.10.6 |
 
## BUILD CLUSTER HADOOP
* The first, you need one network to connect the container
* Run command: docker network create --driver bridge network_hadoop --subnet=172.16.0.0/16
* The next, install Hadoop: [Config Hadoop with docker](https://github.com/TrieanNguyen/Hadoop-Cluster-3node.git)
* You need in the folder Hadoop-Cluster-3node
* Run command: cd Hadoop-Cluster-3node
* Run the command to build Images:    docker-compose build
* Run the command to build Container: docker-compose up
* Right now you can check the Container activity, run command: docker ps 
* If you want stop the Container, run command:  docker-compose down
* Here you have installed Hadoop by Docker, GOOD LUCK!!!   
 
