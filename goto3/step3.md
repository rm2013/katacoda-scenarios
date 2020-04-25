## CalendarItems Application Deplpoyment

#### Deploy Userservice microservice

`kubectl apply -f /opt/userservice.yml`{{execute}}

#### Deploy Calendarservice microservice
`kubectl apply -f /opt/calendarservice.yml`{{execute}}

Deploy CalendarApp UI
`kubectl apply -f /opt/calendarapp.yml`{{execute}}

Validate all pods are up and running
`kubectl -ntestspace get po`{{execute}}

#### Access CalendarApp UI

https://[[HOST_SUBDOMAIN]]-31008-[[KATACODA_HOST]].environments.katacoda.com

#### Change settings in CalendarApp to point to Calendarservice and Userservice
Select settings and set the CalendarService and Userservice links as listed below

CalendarService URL: https://[[HOST_SUBDOMAIN]]-31009-[[KATACODA_HOST]].environments.katacoda.com

Userservice URL: https://[[HOST_SUBDOMAIN]]-31010-[[KATACODA_HOST]].environments.katacoda.com






