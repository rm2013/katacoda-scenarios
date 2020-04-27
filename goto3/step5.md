## Using the CalendarApp

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

#### Signup a user
Using the UI select Signup and signup as a user

Login as  a user

Add some events










