Prepare files to run kafka elements
`chmod +x /opt/init.sh && /opt/init.sh`{{execute HOST1}}

Deploy zookeeper service and pods

`kubectl apply -f /opt/zkp`{{execute HOST1}}

Wait for the zookeeper pod to come up

`watch kubectl -ntestspace get po`{{execute HOST1}}

Clear the command when the pods come up
`clear`{{execute interrupt HOST1}}

Deploy kafka service and tpods

`kubectl apply -f /opt/kfk`{{execute HOST1}}

Wait for  the kafka pod to come up

`watch kubectl -ntestspace get po`{{execute HOST1}}

Clear the command when the pods come up
`clear`{{execute interrupt HOST1}}

Display the content of  kafka-producer-consumer.yml file

`cat /opt/kafka-producer-consumer.yml`{{execute HOST1}}

Deploy kafka service and tpods

`kubectl apply -f /opt/kafka-producer-consumer.yml`{{execute HOST1}}

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

