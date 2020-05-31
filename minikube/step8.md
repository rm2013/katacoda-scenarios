

Let's go back to the Bookinfo application, where we have equally distribution of the traffic
 between version 1 and version 3. Now we will see how to distribute the traffic based on the user
  and route it between version 2 and version 3 
 
Review another virtual service definition file
`cat samples/bookinfo/networking/virtual-service-reviews-jason-v2-v3.yaml`{{execute HOST1}}

In the route definition we can see that the traffic is routed to  v2 for a end-user names 'jason' 
and for all other users the traffic will be routed to v3

We will deploy this change by running the following deployment command
 `kubectl apply -f samples/bookinfo/networking/virtual-service-reviews-jason-v2-v3.yaml`{{execute HOST1}}

Head back to the product page using the link below
https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/productpage

Before signing in keep refreshing the page. You should see the reviews show red stars all the time. 
This is because when the user is not 'jason' the all traffic is routed to v3 

Now sign in with user name 'jason'
Refresh the page multiple times and notice that each time the reviews show black stars unlike the 
red stars shown for other users. This is because the routing rules is routing the traffic to v2

This validates that we can route the traffic based on request header.

