## CalendarItems Application Deplpoyment

In this step we will deploy all the modules of the application in the testspace namespace
Before we do that let's take quick look at the application deploymnet files.

### Review deployment files
#### Locate /root/app/userservice.yml
This file is divided into two parts, first part is the service and the second is the deployment of the pods.
Important point of consideration is the image definition in the container 

#### Locate /root/app/calendarservice.yml
This file is divided into similar pattern. Notice container image is different 

#### Locate /root/app/calendarapp.yml
This file is divided into similar pattern. Notice container image is different

#### Deploy Userservice microservice
Using the kubectl deploy the userservice

`kubectl create -f app/userservice.yml`{{execute}}

#### Deploy Calendarservice microservice
Using the kubectl deploy the calendarservice

`kubectl create -f app/calendarservice.yml`{{execute}}

#### Deploy CalendarApp UI
Using the kubectl deploy the calendarapp

`kubectl create -f app/calendarapp.yml`{{execute}}





