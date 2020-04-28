## Validating the kafka topic being created

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
With this command we are going to enter into the pod that is running kafka client and into the container.
Once we are in the container we can execute any command that container supports.

`kubectl -ntestspace exec -it $(kubectl -ntestspace get po --no-headers -o custom-columns=":metadata.name" | grep kafkaclient) bash`{{execute}}

### Run kafka topics to list the topics
Now that we are in the container we will locate the kafka directory and change into it.
`cd kafka_2.13-2.5.0`{{execute}}
We will then run kafka topics command to list all the topics
`bin/kafka-topics.sh --list --zookeeper zookeeper:2181`{{execute}}

This should show us calendar-items topic which was created by the calendarservice.




