This is your first step.

## Task

Verifiy kubernetes is installed properly

`kubectl get pods`{{execute}}


Deploy kafka service and pods

#`kubectl apply -f /opt/kafka-producer-consumer.yml`{{execute}}

Download Istio

`curl -L https://istio.io/downloadIstio | ISTIO_VERSION=1.5.1  sh -`{{execute}}

Change Directory to istio-1.5.1

`cd istio-1.5.1`{{execute}}

Add Istio/bin to the path

`export PATH=$PWD/bin:$PATH`{{execute}}

Apply istio demo profile

`istioctl manifest apply --set profile=demo`{{execute}}


`kubectl get svc -n istio-system`{{execute}}

`kubectl get pods -n istio-system`{{execute}}

Expose the port 8080 so that we can post messages
`kubectl -ntestspace port-forward svc/kafka-producer-consumer 8080:8080 &`{{execute}}
``{{execute}}


## Link to produce a message
`curl -X POST http://localhost:8080/send/FirstMessage`{{execute}}
`curl -X POST http://localhost:8080/send/SecondMessage`{{execute}}
`curl -X POST http://localhost:8080/send/ThirdMessage`{{execute}}
`curl -X POST http://localhost:8080/send/FourthMessage`{{execute}}

https://[[HOST_SUBDOMAIN]]-3000-[[KATACODA_HOST]].environments.katacoda.com/dashboard/db/istio-mesh-dashboard

## Link to list the consumed messages
https://[[HOST_SUBDOMAIN]]-31008-[[KATACODA_HOST]].environments.katacoda.com/messages

## Link to produce an failure message - since message with fail is being treated as failure message in our example
`curl -X POST http://localhost:8080/send/failOne`{{execute}}
`curl -X POST http://localhost:8080/send/failTwo`{{execute}}

## Link to list the failed messages from Dead Letter Queue
https://[[HOST_SUBDOMAIN]]-31008-[[KATACODA_HOST]].environments.katacoda.com/errors






