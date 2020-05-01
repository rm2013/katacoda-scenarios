 
Since we have already deployed the v2 of calendar service which has the correction to the issue,
 all we need to do now is to change the settings and have the calendar application use v2
 
 #### Change settings in CalendarApp to point to v2 of Calendarservice
 Select settings and set the CalendarService and Userservice links as listed below. 
 Make sure to hit enter after entering each link so that it can get registered
 
 CalendarService URL: https://[[HOST_SUBDOMAIN]]-31011-[[KATACODA_HOST]].environments.katacoda.com
 
 1. Logout of the calendar app
 
 2. Log back in with the same user
 
 3. Since there was no change in the user service previously registered user should still be good
 
 4. Navigate to the Home page
 
 5. This should not show any events, this is because v2 of calendar service uses a different structure 
    of the message and a new kafka topic
    
 6. Now lets validate the fix, by adding an event and selecting the checkbox next to it.
 
 7. You should not see any error.