

The first stage of initialising the cluster is to launch the master node. 
The master is responsible for running the control plane components, etcd and the API server. 
Clients will communicate to the API to schedule workloads and manage the state of the cluster.

### Deploy master node on HOST1

Update

`sudo apt-get update && sudo apt-get install -y apt-transport-https curl
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
cat <<EOF | sudo tee /etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF
sudo apt-get update`{{execute HOST1}}

upgrade kubeadm 1.15.12-00
`apt-get install -y --allow-change-held-packages kubeadm=1.15.12-00 && \
   kubectl drain master --ignore-daemonsets && \
   apt-get install -y --allow-change-held-packages kubelet=1.15.12-00 kubectl=1.15.12-00 && \
   kubeadm upgrade apply v1.15.12 -y`{{execute HOST1}}


`watch kubectl get nodes`{{execute HOST1}}

Give some time for the version to show up

Clear the command when the pods come up
`clear`{{execute interrupt HOST1}}

Uncordon Master and drain node01
`kubectl uncordon master && \
kubectl drain node01 --ignore-daemonsets --delete-local-data`{{execute HOST1}}

Update Node
`sudo apt-get update && sudo apt-get install -y apt-transport-https curl
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
cat <<EOF | sudo tee /etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF
sudo apt-get update `{{execute HOST2}}

Install kubeadm 1.15.12-00
`apt-get install -y --allow-change-held-packages kubeadm=1.15.12-00 && \
kubeadm upgrade node && \
apt-get install -y --allow-change-held-packages kubelet=1.15.12-00 kubectl=1.15.12-00`{{execute HOST2}}


`watch kubectl get nodes`{{execute HOST1}}

Give some time for the version to show up

Clear the command when the pods come up
`clear`{{execute interrupt HOST1}}


`kubectl uncordon node01`{{execute HOST1}}


Wait until the command completes.

Run the kubectl command to check the availability of namespaces
`kubectl get namespace`{{execute HOST1}}


