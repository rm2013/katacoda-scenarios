

The Container Network Interface (CNI) defines how the different nodes and their workloads should communicate. There are multiple network providers available, some are listed here.

## Task

In this scenario we'll use WeaveWorks. The deployment definition can be viewed at cat /opt/weave-kube{{execute HOST1}}

This can be deployed using kubectl apply.

Weave will now deploy as a series of Pods on the cluster. The status of this can be viewed using the command 
`kubectl get pod -n kube-system`{{execute HOST1}}


