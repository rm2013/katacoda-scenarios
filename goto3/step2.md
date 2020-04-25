## Kafka deployment

We will deploy Kafka elements using the apply option

#### Deploy storageclass and persistent volume
This command will deploy all yaml files in the /opt/pv folder. 

`kubectl apply -f pv`{{execute}}
 
#### Deploy zookeeper 
This command will deploy zookeeper service and pods

`kubectl apply -f zkp`{{execute}}

Wait for the zookeeper pod to come up

`watch kubectl -ntestspace get po`{{execute}}

Clear the command when the pods come up
`clear`{{execute interrupt}}

#### Deploy kafka 
This command will deploy kafka broker and service

`kubectl apply -f kfk`{{execute}}

Wait for  the kafka pod to come up

`watch kubectl -ntestspace get po`{{execute}}

Clear the command when the pods come up
`clear`{{execute interrupt}}


