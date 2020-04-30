## Validate Calendar App deployment

We will validate calendarapp is working with connection to calendarservice v1 and userservice. 
The behavior of the application should be similar to what is seen in Demo3. 
We are going to highlight a specific shortcoming in version v1. 

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
1. Using the UI select Signup and sign up as a user with name username "regular"

2. Login with the username "regular"

3. Add some events

4. Now let's look at the shortcoming, click on the checkbox next to the added event. 
    This should produce an error. This is what we will correct in v2.  
    In the next step we will see how to roll out the correction to only a selective group of users. 