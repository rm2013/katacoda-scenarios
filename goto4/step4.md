## Deploy elements of Calendar App

We will deploy CalendarApp which includes 2 versions of calendarservice

Deploy userservice on port 31010
`kubectl create -f userservice.yml`{{execute}}

Deploy calendarservice v1 on port 31009
`kubectl create -f calendarservice.yml`{{execute}}

Deploy calendarservice v2 on port 31011
`kubectl create -f calendarservice_v2.yml`{{execute}}

Deploy calendarapp on poert 31008
`kubectl create -f calendarapp.yml`{{execute}}

In the next step we will validate the deployment of the services. 

