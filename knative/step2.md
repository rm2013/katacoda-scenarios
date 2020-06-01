
### Install knative
New
curl -L https://github.com/knative/serving/releases/download/v0.5.1/istio-lean.yaml | sed 's/LoadBalancer/NodePort/' | kubectl apply --filename -

kubectl get pods --namespace istio-system

kubectl label namespace default istio-injection=enabled

kubectl get crds | grep .istio.

curl -L https://github.com/knative/serving/releases/download/v0.5.1/serving.yaml | sed 's/LoadBalancer/NodePort/' | kubectl apply --filename -

kubectl get pods --namespace knative-serving

kubectl get crds | grep .knative.

Old
`kubectl apply --filename https://github.com/knative/serving/releases/download/v0.14.0/serving-crds.yaml`{{execute HOST1}}


`kubectl apply --filename https://github.com/knative/serving/releases/download/v0.14.0/serving-core.yaml`{{execute HOST1}}

### Download istio

Download the istio version 1.4.6


`export ISTIO_VERSION=1.4.6 && 
curl -L https://git.io/getLatestIstio | sh - && cd istio-${ISTIO_VERSION}`{{execute HOST1}}

`for i in install/kubernetes/helm/istio-init/files/crd*yaml; do kubectl apply -f $i; done`{{execute HOST1}}

`kubectl apply -f /opt/istio-system.yml`{{execute HOST1}}
 
`kubectl apply -f /opt/istio-lean.yml`{{execute HOST1}}

# Add the extra gateway.
`kubectl apply -f /opt/istio-local-gateway.yml`{{execute HOST1}}

`kubectl get pods --namespace istio-system`{{execute HOST1}}

`kubectl get svc -nistio-system`{{execute HOST1}}


`kubectl apply --filename https://github.com/knative/net-istio/releases/download/v0.14.0/release.yaml`{{execute HOST1}}

`kubectl --namespace istio-system get service istio-ingressgateway`{{execute HOST1}}


Change the IP 

`kubectl edit cm config-domain --namespace knative-serving`{{execute HOST1}}

Install Istio Controller
`kubectl apply --filename https://github.com/knative/net-istio/releases/download/v0.14.0/release.yaml`{{execute HOST1}}

Fetch External IP
`kubectl --namespace istio-system get service istio-ingressgateway`{{execute HOST1}}

Configure DNS
`kubectl apply --filename https://github.com/knative/serving/releases/download/v0.14.0/serving-default-domain.yaml`{{execute HOST1}}

Monitor the pods
`watch kubectl get pods --namespace knative-serving`{{execute HOST1}}

Clear the command when the pods come up
`clear`{{execute interrupt HOST1}}

--------Old---------
### Deploy istio 
Add istio to path and deploy istio modules
`export PATH="$PATH:/root/istio-1.0.0/bin" && cd /root/istio-1.0.0 && \
 kubectl apply -f install/kubernetes/helm/istio/templates/crds.yaml -n istio-system && \
 kubectl apply -f install/kubernetes/istio-demo-auth.yaml  `{{execute HOST1}}


Check the status of the istio pods in the istio-system
`watch kubectl get pods -n istio-system`{{execute HOST1}}

Clear the command when the pods come up
`clear`{{execute interrupt HOST1}}

Extract the Host1 IP
`export EXT_IP=$(hostname -I |  head -n1 | awk '{print $1;}') && \
  sed -i -- 's/extip/'$EXT_IP'/g' /opt/istio-services.yml && \
  kubectl apply -f /opt/istio-services.yml `{{execute HOST1}}

