## Kafka deployment

Now that we have reviewed the definition files, 
We will deploy these elements using the create option of kubectl. 
As seen in the previous step the files in each folder are numbered in a sequence.
The reason being the create command create each element in the order, and yes order is important.

#### Deploy storageclass and persistent volume
This command will deploy all yaml files in the pv folder. 

`kubectl create -f pv`{{execute}}
 
#### Deploy zookeeper 
This command will deploy zookeeper service and pods

`kubectl create -f zkp`{{execute}}

Wait for the zookeeper pod to come up, this is needed before we move on to deploying the kafka

`watch kubectl -ntestspace get po`{{execute}}

Clear the command when the pods come up
`clear`{{execute interrupt}}

#### Deploy kafka 
This command will deploy kafka broker and services

`kubectl create -f kfk`{{execute}}

Wait for  the kafka pod to come up

`watch kubectl -ntestspace get po`{{execute}}

Clear the command when the pods come up
`clear`{{execute interrupt}}


Now that we see all the pods are up for both zookeeper and kafka we can proceed to deploy the application next.