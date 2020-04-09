#!/bin/sh
rm $HOME/.kube/config
kubeadm reset -f || true
mkdir -p /root/.kube
kubeadm init --kubernetes-version $(kubeadm version -o short) --token=96771a.f608976060d16396
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
kubectl apply -f /opt/weave-kube

HOST=$(/sbin/ifconfig ens3 | grep 'inet addr' | cut -d: -f2 | awk '{print $1}')
sed -i s/HOSTIP/$HOST/g /opt/katacoda-cloud-provider.yaml
kubectl apply -f /opt/katacoda-cloud-provider.yaml
