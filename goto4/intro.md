# Welcome to your Katacoda Scenario with kube cluster with kube admin, Kafka, Istio and CalendarEvents 

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
We will review the kafka deployment definition files, 
which will be used to create kafka elements in the next step.

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


