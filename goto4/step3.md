## Prepare files to kafka elements


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


Expose the port 8080 so that we can post messages
`kubectl -ntestspace port-forward svc/kafka-producer-consumer 8080:8080 &`{{execute HOST1}}


## Link to produce a message
`curl -X POST http://localhost:8080/send/FirstMessage`{{execute HOST1}}
`curl -X POST http://localhost:8080/send/SecondMessage`{{execute HOST1}}
`curl -X POST http://localhost:8080/send/ThirdMessage`{{execute HOST1}}
`curl -X POST http://localhost:8080/send/FourthMessage`{{execute HOST1}}

## Link to list the consumed messages
https://[[HOST_SUBDOMAIN]]-31008-[[KATACODA_HOST]].environments.katacoda.com/messages

## Link to produce an failure message - since message with fail is being treated as failure message in our example
`curl -X POST http://localhost:8080/send/failOne`{{execute HOST1}}
`curl -X POST http://localhost:8080/send/failTwo`{{execute HOST1}}

## Link to list the failed messages from Dead Letter Queue
https://[[HOST_SUBDOMAIN]]-31008-[[KATACODA_HOST]].environments.katacoda.com/errors

