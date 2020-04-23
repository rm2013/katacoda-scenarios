
#Launch Kubernetes
/usr/bin/launch.sh 

cd /opt

#Make dir for kafka data
mkdir /opt/kafka
mkdir /opt/kafka/data

#Make dir for Persistence zookeeper and kafka deployments
mkdir /opt/zkp
mkdir /opt/kfk
mkdir /opt/pv


#Copy respectives files into deployment dirs
mv /opt/1* /opt/zkp
mv /opt/2* /opt/kfk
mv /opt/0* /opt/pv
