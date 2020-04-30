
cd /root

#Make dir for kafka data
mkdir kafka
mkdir kafka/data

#Make dir for Persistence zookeeper and kafka deployments
mkdir zkp
mkdir kfk
mkdir pv
mkdir app
mkdir app-m


#Copy respectives files into deployment dirs
mv /opt/1* zkp
mv /opt/2* kfk
mv /opt/0* pv
mv /opt/userservice.yml app
mv /opt/calendarservice_v1.yml app
mv /opt/calendarservice_v2.yml app
mv /opt/calendarapp.yml app

mv /opt/calenderapp-m.yml app-m
mv /opt/calenderapp-m-gateway.yml app-m
mv /opt/calenderservice-m.yml app-m
mv /opt/virtual-service-calenderservice-m.yml app-m
mv /opt/userservice-m.yml app-m
mv /opt/destination-rule-all-mtls.yml app-m