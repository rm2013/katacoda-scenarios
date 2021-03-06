
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

#Create a namespace
kubectl create namespace testspace

#Deploy storagewclass and persistent volume
kubectl apply -f /opt/pv
 
#Deploy zookeeper service and pods
kubectl apply -f /opt/zkp
sleep 30

#Wait for the zookeeper pod to come up
kubectl -ntestspace get po

#Deploy kafka service and tpods

kubectl apply -f /opt/kfk

sleep 60

#Wait for  the kafka pod to come up

 kubectl -ntestspace get po

#Display the content of  kafka-producer-consumer.yml file

#cat /opt/kafka-producer-consumer.yml

#Deploy kafka service and tpods

kubectl apply -f /opt/kafka-producer-consumer.yml

sleep 10

#Wait for the kafka-producer-consumer pod to come up

kubectl -ntestspace get po


