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

`kubectl -ntestspace svc/greeting 8080:8080 &`{{execute}}

## Test 

`curl localhost:8080/greeting`{{execute}}



