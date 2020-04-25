## Kafka deployment

##### We will deploy Kafka elements using the apply option

###Deploy storageclass and persistent volume, this will deploy all yaml files in the folder

`kubectl apply -f /opt/pv`{{execute}}
 
###Deploy zookeeper service and pods

`kubectl apply -f /opt/zkp`{{execute}}

###Wait for the zookeeper pod to come up

`watch kubectl -ntestspace get po`{{execute}}

###Clear the command when the pods come up
`clear`{{execute interrupt}}

###Deploy kafka service and tpods

`kubectl apply -f /opt/kfk`{{execute}}

###Wait for  the kafka pod to come up

`watch kubectl -ntestspace get po`{{execute}}

###Clear the command when the pods come up
`clear`{{execute interrupt}}

