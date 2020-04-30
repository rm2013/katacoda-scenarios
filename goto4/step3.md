## Deplot kafka elements


Create a namespace and deploy Persistant Volume and Zookeepers
`kubectl create namespace testspace && \
 kubectl create -f pv && \
 kubectl create -f zkp`{{execute}}

Wait for the kafka-producer-consumer pod to come up
`watch kubectl -ntestspace get po`{{execute HOST1}}

Clear the command when the pods come up
`clear`{{execute interrupt HOST1}}

Deploy kafka
`kubectl create -f kfk`{{execute}}

Wait for the kafka-producer-consumer pod to come up
`watch kubectl -ntestspace get po`{{execute HOST1}}

Clear the command when the pods come up
`clear`{{execute interrupt HOST1}}

