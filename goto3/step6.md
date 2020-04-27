## CalendarItems Application Deplpoyment

In this step we will deploy all the modules of the application in the testspace namespace

#### Deploy Userservice microservice

`kubectl apply -f app/userservice.yml`{{execute}}

#### Deploy Calendarservice microservice
`kubectl apply -f app/calendarservice.yml`{{execute}}

Deploy CalendarApp UI
`kubectl apply -f app/calendarapp.yml`{{execute}}

Validate all pods are up and running
`watch kubectl -ntestspace get po`{{execute}}

Clear the command when the pods come up
`clear`{{execute interrupt}}

#### Access CalendarApp UI

https://[[HOST_SUBDOMAIN]]-31008-[[KATACODA_HOST]].environments.katacoda.com

#### Change settings in CalendarApp to point to Calendarservice and Userservice
Select settings and set the CalendarService and Userservice links as listed below

CalendarService URL: https://[[HOST_SUBDOMAIN]]-31009-[[KATACODA_HOST]].environments.katacoda.com

Userservice URL: https://[[HOST_SUBDOMAIN]]-31010-[[KATACODA_HOST]].environments.katacoda.com






