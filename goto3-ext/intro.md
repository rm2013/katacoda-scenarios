# Welcome to Katacoda Scenario for Demo 3 Ext!


In this Demo we will install kafka in kubernetes environment with persistent volume. 
Then deploy the CalendarItems Application which is now broken up into three applications.

## Step1:
We will start with auto-installing kubernetes. We will then Validate the kubernetes is installed correctly.

## Step2:
We will review the kafka deployment definition files, which will be used to create kafka elements in the next step.

## Step3: 
We will create storage class, persistent volume, zookeeper and kafka broker
 
## Step4:
We will deploy CalendarApp. The is now broken into three parts. 
First part is the microservice that manages users, which is userservice.
Second microservice is Calendarservice which handles all calendar item functionality. 
The third part is the static UI.

## Step5:
We will launch the application and 
adjust the settings in the application to point to Userservice and Calendarservice. 
We will then signup a user, login as the user and add some events  

## Step6:
We will spin up a kafka client pod. 
We will get into the kafka client pod and validate that the claendar-items topic is created
