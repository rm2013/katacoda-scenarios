mkdir /opt/storage-class
mkdir /opt/zookeeper
mkdir /opt/kafka


mv docker-storageclass-broker.yml storage-class/
mv docker-storageclass-zookeeper.yml storage-class/

mv 10broker-config.yml kafka/
mv 20dns.yml kafka/
mv 30bootstrap-service.yml kafka/
mv 50kafka.yml kafka/

mv 10zookeeper-config.yml zookeeper/
mv 20pzoo-service.yml zookeeper/
mv 30service.yml zookeeper/
mv 21zoo-service.yml zookeeper/
mv 50pzoo.yml zookeeper/
mv 51zoo.yml zookeeper/

/usr/bin/launch.sh 


