# CLUSTER HADOOP, SPARK WITH DOCKER
## INSTRODUCTION
* Here, the Hadoop is cluster 3 node include: 1 master, 2 slave(slave1 and slave2)
* Conditon, the versions Java, Hadoop, Docker include: 
 <table>
 
|  HADOOP  |  2.7.7   |
| ---------|----------|
|   JAVA   |    1.8   |
|  DOCKER  |  20.10.6 |
|  SPARK   |   3.0.2  |
  
## BUILD CLUSTER HADOOP
Install Cluster HADOOP, SPARK: [Config Hadoop with docker](https://github.com/TrieanNguyen/Hadoop-Cluster-3node.git)
* The first, you need one network to connect the container
### CREATE NETWORK
                 docker network create --driver bridge network_hadoop --subnet=172.16.0.0/16
* You need in the folder Hadoop-Cluster-3node
### Run command: 
                                      cd Hadoop-Cluster-3node
### BUILD THE IMAGES

                                      docker-compose build
### BUILD THE CONTAINER
                                      docker-compose up
### CHECK STATUS CONTAINER
* Right now you can check the Container activity, run command:
 
                                       docker ps 
### TURN OFF CONTAINER
* If you want stop the Container, run command:
 
                                     docker-compose down
### THIS IS STEP BUILD CLUSTER HADOOP,SPARK 3 NODE.
* Here you have installed Hadoop by Docker, GOOD LUCK!!!   
 
