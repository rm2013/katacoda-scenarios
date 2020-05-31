# Welcome to your Katacoda Scenario with kubernetes, knative and CalendarEvents 

In this scenario you'll learn how to bootstrap a Kubernetes cluster using Kubeadm.

Kubeadm solves the problem of handling TLS encryption configuration, 
deploying the core Kubernetes components and ensuring that 
additional nodes can easily join the cluster. 
The resulting cluster is secured out of the box via mechanisms such as RBAC.

More details on Kubeadm can be found at https://github.com/kubernetes/kubeadm

## Step1:
We will start with deploying kubernetes cluster using kubeadm with master on HOST1 and node on HOST2.
Then we will validate that the master and nodes are ready.

## Step2:
We will download and install istio

## Step3: 
We will deploy bookinfo example

## Step4: 
We will kafka elements
 
## Step5:
We will deploy CalendarApp which includes 2 versions of calendarservice

## Step6:
We will launch the application and 
adjust the settings in the application to point to Userservice and Calendarservice. 
We will then sign up a user, login as the user and add some events  

## Step7:
Validate the fix to the Calendar App

## Step8:
We will validate user's experiencing changes with header values

