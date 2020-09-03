


### Install greeting and time services

`kubectl create -f /opt/greeting.yml`{{execute HOST1}}

`kubectl apply -f /opt/time.yml`{{execute HOST1}}


`kubectl -n testspace get po`{{execute HOST1}}
