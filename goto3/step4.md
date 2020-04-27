## CalendarItems Application Deplpoyment

In this step we will deploy all the modules of the application in the testspace namespace
Before we do that let's take quick look at the application deploymnet files.

#### Review deployment files
Locate /root/app/userservice.yml
It is divided into two parts first is the service and the second is the deployment of the pods.
Important point of condsideration is the image definition in the container 

Locate /root/app/calendarservice.yml

Locate /root/app/calendarapp.yml

#### Deploy Userservice microservice
`kubectl create -f app/userservice.yml`{{execute}}

#### Deploy Calendarservice microservice
`kubectl create -f app/calendarservice.yml`{{execute}}

#### Deploy CalendarApp UI
`kubectl create -f app/calendarapp.yml`{{execute}}

Validate all pods are up and running
`watch kubectl -ntestspace get po`{{execute}}

Clear the command when the pods come up
`clear`{{execute interrupt}}

#### Access CalendarApp UI

https://[[HOST_SUBDOMAIN]]-31008-[[KATACODA_HOST]].environments.katacoda.com

Before we start using the app we need to setup the connections to userservice and calendarservice

#### Change settings in CalendarApp to point to Calendarservice and Userservice
Select settings and set the CalendarService and Userservice links as listed below. 
Make sure to hit enter after entering each link so that it can get registered

CalendarService URL: https://[[HOST_SUBDOMAIN]]-31009-[[KATACODA_HOST]].environments.katacoda.com

Userservice URL: https://[[HOST_SUBDOMAIN]]-31010-[[KATACODA_HOST]].environments.katacoda.com






