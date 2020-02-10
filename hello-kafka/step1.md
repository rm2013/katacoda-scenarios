This is your first step.

## Task

Verifiy kubernetes is installed properly

`kubectl get pods`{{execute}}

Create a namespace

`kubectl create namespace testspace`{{execute}}

Display the content of greeting.yml

`cat /opt/greeting.yml`{{execute}}

Deploy greeting service and pods

`kubectl apply -f /opt/greeting.yml`{{execute}}

Display the content of time.yml

`cat /opt/time.yml`{{execute}}

Deploy time service and pods

`kubectl apply -f /opt/time.yml`{{execute}}


## Link to access greeting
https://[[HOST_SUBDOMAIN]]-31006-[[KATACODA_HOST]].environments.katacoda.com







