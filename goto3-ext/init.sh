
#Launch Kubernetes
/usr/bin/launch.sh 

cd /root

#Make dir for kafka data
mkdir kafka
mkdir kafka/data

#Make dir for Persistence zookeeper and kafka deployments
mkdir zkp
mkdir kfk
mkdir pv
mkdir app


#Copy respectives files into deployment dirs
mv /opt/0* pv
mv /opt/1* zkp
mv /opt/2* kfk
mv /opt/userservice.yml app
mv /opt/calendarservice.yml app
mv /opt/calendarapp.yml app

