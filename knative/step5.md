New
kubectl delete -f https://raw.githubusercontent.com/sylus/helloworld-go/master/service.yaml

Old

We will deploy CalendarApp which includes 2 versions of calendarservice

Deploy userservice on port 31010
`kubectl create -f /root/app/userservice.yml`{{execute}}

Deploy calendarservice v1 on port 31009
`kubectl create -f /root/app/calendarservice_v1.yml`{{execute}}

Deploy calendarservice v2 on port 31011
`kubectl create -f /root/app/calendarservice_v2.yml`{{execute}}

Deploy calendarapp on poert 31008
`kubectl create -f /root/app/calendarapp.yml`{{execute}}

In the next step we will validate the deployment of the services. 

