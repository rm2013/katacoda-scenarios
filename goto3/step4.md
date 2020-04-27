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





