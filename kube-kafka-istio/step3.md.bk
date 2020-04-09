

Kubernetes has a web-based dashboard UI giving visibility into the Kubernetes cluster.

## Task

Deploy the dashboard yaml with the command 
`kubectl apply -f dashboard.yaml`{{execute HOST1}}

The dashboard is deployed into the kube-system namespace. View the status of the deployment with 
`kubectl get pods -n kube-system`{{execute HOST1}}

When the dashboard was deployed, it was assigned a NodePort of 30000. This makes the dashboard available to outside of the cluster and viewable at https://[[HOST2_SUBDOMAIN]]-30000-[[KATACODA_HOST]].environments.katacoda.com/


