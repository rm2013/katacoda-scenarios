

The first stage of initialising the cluster is to launch the master node. 
The master is responsible for running the control plane components, etcd and the API server. 
Clients will communicate to the API to schedule workloads and manage the state of the cluster.

### Deploy master node on HOST1

The command below will initialise the cluster and will provide a command to setup the node

`/opt/launch-kubeadm.sh`{{execute HOST1}}

`sudo apt-get update && sudo apt-get install -y apt-transport-https curl
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
cat <<EOF | sudo tee /etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF
sudo apt-get update`{{execute HOST1}}

`apt-get install -y --allow-change-held-packages kubeadm=1.15.12-00`{{execute HOST1}}

`kubectl drain master --ignore-daemonsets`{{execute HOST1}}

`apt-get install -y --allow-change-held-packages kubelet=1.15.12-00 kubectl=1.15.12-00`{{execute HOST1}} 

`kubectl uncordon master`{{execute HOST1}}

`kubectl drain node01 --ignore-daemonsets --delete-local-data`{{execute HOST1}}

`kubeadm upgrade node`{{execute  HOST2}}

`apt-get install -y --allow-change-held-packages kubelet=1.15.12-00 kubectl=1.15.12-00`{{EXECUTE HOST2}}

`kubectl get nodes`{{execute HOST2}}

`kubectl uncordon node01`{{execute HOST2}}


Wait until the command completes.

### Deploy node on HOST2 
Locate the command in Host1 termal which looks like this
kubeadm join 172.17.0.29:6443 --token 96771a.f608976060d16396 \
    --discovery-token-ca-cert-hash sha256:1c89d475ab17af2867ddfe9ec2f50169186f9abb5f01fe6d9f545050fcf47d3e

Copy and run the recommended kubeadm command on Host2 to join it to the cluster. 
This step is needed before continuing on to the next step

Run the following command to verify a master and a node exists
`watch kubectl get nodes`{{execute HOST1}}

Clear the command when the master and node both become ready
`clear`{{execute interrupt HOST1}}

Run the kubectl command to check the availability of namespaces
`kubectl get namespace`{{execute HOST1}}


