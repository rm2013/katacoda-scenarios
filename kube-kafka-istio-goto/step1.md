

Kubeadm has been installed on the nodes. Packages are available for Ubuntu 16.04+, CentOS 7 or HypriotOS v1.0.1+.

The first stage of initialising the cluster is to launch the master node. The master is responsible for running the control plane components, etcd and the API server. Clients will communicate to the API to schedule workloads and manage the state of the cluster.

## Task

The command below will initialise the cluster with a known token to simplify the following steps.

`/opt/launch-kubeadm.sh`{{execute HOST1}}

Wait until the command completes.

Locate the command in Host1 termal which looks like this
kubeadm join 172.17.0.29:6443 --token 96771a.f608976060d16396 \
    --discovery-token-ca-cert-hash sha256:1c89d475ab17af2867ddfe9ec2f50169186f9abb5f01fe6d9f545050fcf47d3e

Copy and run the recommended kubeadm command on Host2 to join it to the cluster. This step is needed before continuing on to the next step

Run the following command to verify a master and a node exists
`kubectl get nodes`{{execute HOST1}}

