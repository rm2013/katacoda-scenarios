

### Start minikube
`minikube start`{{execute T1}}

Enable metrics addon
`minikube addons enable metrics-server`{{execute T1}}

### Install greeting and time services

`kubectl create -f /opt/greeting.yml`{{execute T1}}

`kubectl apply -f /opt/time.yml`{{execute T1}}


`kubectl -n testspace get po`{{execute T1}}
