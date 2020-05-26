

### Download istio

Download the istio version 1.4.6


`export ISTIO_VERSION=1.4.6 && 
curl -L https://git.io/getLatestIstio | sh - && cd istio-${ISTIO_VERSION}`{{execute HOST1}}

`for i in install/kubernetes/helm/istio-init/files/crd*yaml; do kubectl apply -f $i; done`{{execute HOST1}}

`kubectl apply -f /opt/istio-system.yml`{{execute HOST1}}
 
`kubectl apply -f /opt/istio-lean.yaml`{{execute HOST1}}

# Add the extra gateway.
`kubectl apply -f /opt/istio-local-gateway.yaml`{{execute HOST1}}

`kubectl get pods --namespace istio-system`{{execute HOST1}}

`kubectl get svc -nistio-system`{{execute HOST1}}

`kubectl create ns knative-serving`{{execute HOST1}}

`kubectl apply --filename https://github.com/knative/net-istio/releases/download/v0.14.0/release.yaml`{{execute HOST1}}

`kubectl --namespace istio-system get service istio-ingressgateway`{{execute HOST1}}


Change the IP 

`kubectl edit cm config-domain --namespace knative-serving`{{execute HOST1}}

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

