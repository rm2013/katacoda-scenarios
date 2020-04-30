## Validate user's experiencing changes with header values

### Create preferred user

### Add user info in the headers

### User experience change

1. Sign up as a new user with username "beta_user"

2. Login as "beta_user"

3. Add an event, by entering some text and hit enter

3. Click on the checkbox next to the event that was created in the list

4. There should not be any error. This due to the fact that for 
    username the request will be served by v2 which have the fix.

5. Logout and login again with username "regular"

6. Go to home page and add an event

7. Click on the checkbox next to the added event and this shoudl create the error.

In this example we have put the rule of routing based on the username 
and username is being passed in the header. We can setup other sophisticated rules for production systems 
