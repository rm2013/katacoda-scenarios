This is your first step.

## Task

Verifiy kubernetes is installed properly

`kubectl get pods`{{execute}}

Create a namespace

`kubectl create namespace testspace`{{execute}}

Display the content of zookeeper.yml

`cat /opt/zookeeper.yml`{{execute}}

Deploy zookeeper service and pods

`kubectl apply -f /opt/zookeeper.yml`{{execute}}

Display the content of kafka.yml

`cat /opt/kafka.yml`{{execute}}

Deploy kafka service and pods

`kubectl apply -f /opt/kafka.yml`{{execute}}

Display the content of  kafka-producer-consumer.yml file

`cat /opt/kafka-producer-consumer.yml`{{execute}}

## Link to produce a message
`curl -X POST http://localhost:31008/send/FirstMessage`{{execute}}

## Link to list the consumed messages
https://[[HOST_SUBDOMAIN]]-31008-[[KATACODA_HOST]].environments.katacoda.com/messages

## Link to produce an failure message - since message with fail is being treated as failure message in our example
`curl -X POST http://localhost:31008/send/fail`{{execute}}

## Link to list the failed messages from Dead Letter Queue
https://[[HOST_SUBDOMAIN]]-31008-[[KATACODA_HOST]].environments.katacoda.com/errors






