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


Find the topics
`/opt/kafka-topics.sh --list'{{execute}}

## Link to access greeting







