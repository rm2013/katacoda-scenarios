## Starting a docker container with kafka

Let us now spin up a base docker container with kafka client

#### Deploy Kafka Client pod
Using the deployment file deploy the kafkaclient
`kubectl apply -f /opt/kafkaclient.yml`{{execute}}

#### Check to see of the kafkaclient is up
Wait until the pod is up
`watch kubectl -ntestspace get po`{{execute}}

Clear the command when the pods come up
`clear`{{execute interrupt}}

### Exec into the kafkaclient pod

`kubectl -ntestspace exec -it $(kubectl -ntestspace get po --no-headers -o custom-columns=":metadata.name" | grep kafkaclient) bash`{{execute}}

### Run kafka topics to list the topics
Change to kafka directory
`cd kafka_2.13-2.5.0`{{execute}}
Run kafka topics command
`bin/kafka-topics.sh --list --zookeeper zookeeper:2181`{{execute}}

This validates that CalendarApp has created the topic and sharing messages from it.




