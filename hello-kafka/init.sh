mkdir /opt/storage-class
mkdir /opt/zookeeper
mkdir /opt/kafka

/usr/bin/launch.sh 

cd /opt

mv /opt/docker-storageclass-broker.yml storage-class/
mv /opt/docker-storageclass-zookeeper.yml storage-class/

mv /opt/10broker-config.yml kafka/
mv /opt/20dns.yml kafka/
mv /opt/30bootstrap-service.yml kafka/
mv /opt/50kafka.yml kafka/

mv /opt/10zookeeper-config.yml zookeeper/
mv /opt/20pzoo-service.yml zookeeper/
mv /opt/30service.yml zookeeper/
mv /opt/21zoo-service.yml zookeeper/
mv /opt/50pzoo.yml zookeeper/
mv /opt/51zoo.yml zookeeper/



