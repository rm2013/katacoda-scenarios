## Starting a docker container with kafka

Let us now spinup a base docker container with kafka client

#### Deploy Userservice microservice

`kubectl apply -f kafkaclient.yml`{{execute}}

#### Check to see of the kafkaclient is up
Wait until the po is up
`wait kubectl -ntestspace get po`{{execute}}

Clear the command when the pods come up
`clear`{{execute interrupt}}

### Exec intot the kafkaclient pod

`kubectl -ntestspace exec -it $(kubectl -ntestspace get po --no-headers -o custom-columns=":metadata.name" | grep kafkaclient) bash`{{execute}}

### Run kafka topics to list the topics
Change to kafka directory
`cd kafka_2.13-2.5.0`{{execute}}
Run kafka topics command
`bin/kafka-topics.sh --list --zookeeper zookeeper:2181`{{execute}}

This validates that CalendarApp has created the topic and sharing messages from it.




