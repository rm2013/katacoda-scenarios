This is your first step.

## Task

Verifiy kubernetes is installed properly

`kubectl get pods`{{execute}}

Create a namespace

`kubectl create namespace testspace`{{execute}}

Deploy storagewclass and persistent volume

`kubectl apply -f /opt/pv`{{execute}}
 
Deploy zookeeper service and pods

`kubectl apply -f /opt/zkp`{{execute}}

Wait for the zookeeper pod to come up

`kubectl -ntestspace get po`{{execute}}

Deploy kafka service and tpods

`kubectl apply -f /opt/kfk`{{execute}}

Wait for  the kafka pod to come up

`kubectl -ntestspace get po`{{execute}}

Display the content of  kafka-producer-consumer.yml file

`cat /opt/kafka-producer-consumer.yml`{{execute}}

Deploy kafka service and tpods

`kubectl apply -f /opt/kafka-producer-consumer.yml`{{execute}}

Wait for the kafka-producer-consumer pod to come up

`kubectl -ntestspace get po`{{execute}}

Expose the port 8080 so that we can post messages
`kubectl -ntestspace port-forward svc/kafka-producer-consumer 8080:8080`{{execute}}

## Link to produce a message
`curl -X POST http://localhost:8080/send/FirstMessage`{{execute}}
`curl -X POST http://localhost:8080/send/SecondMessage`{{execute}}
`curl -X POST http://localhost:8080/send/ThirdMessage`{{execute}}
`curl -X POST http://localhost:8080/send/FourthMessage`{{execute}}

## Link to list the consumed messages
https://[[HOST_SUBDOMAIN]]-31008-[[KATACODA_HOST]].environments.katacoda.com/messages

## Link to produce an failure message - since message with fail is being treated as failure message in our example
`curl -X POST http://localhost:8080/send/failOne`{{execute}}
`curl -X POST http://localhost:8080/send/failTwo`{{execute}}

## Link to list the failed messages from Dead Letter Queue
https://[[HOST_SUBDOMAIN]]-31008-[[KATACODA_HOST]].environments.katacoda.com/errors






