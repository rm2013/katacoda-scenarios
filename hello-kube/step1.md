This is your first step.

## Task

Verifiy kubernetes is installed properly

`kubectl get pods`{{execute}}

Create a namespace

`kubectl create namespace testspace`{{execute}}

Display the content of greeting.yml

`cat /root/greeting.yml`{{execute}}

Deploy greeting service and pods

`kubectl apply -f /root/greeting.yml`{{execute}}

Display the content of time.yml

`cat /root/time.yml`{{execute}}

Deploy time service and pods

`kubectl apply -f /root/time.yml`{{execute}}

## Port forward greeting:8080 to host 8080  

`kubectl -ntestspace port-forward svc/greeting 8080:8080 &'{{execute}}

## Link to access greeting
https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com

## Start HTTP Server docker run -p 80:80 -d katacoda/docker-http-server{{execute}}

## Test curl localhost{{execute}}
Generated Web Link

https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com





