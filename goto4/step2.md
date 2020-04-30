## Install istio

### Download istio

Download the istio version 1.0.0

`curl -L https://git.io/getLatestIstio | ISTIO_VERSION=1.0.0 sh -`{{execute HOST1}}

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

Enable istio-injection for the default namespace

`kubectl label namespace default istio-injection=enabled`{{execute HOST1}}

Deploy bookinfo example

`kubectl apply -f <(istioctl kube-inject -f samples/bookinfo/platform/kube/bookinfo.yaml)`{{execute HOST1}}
`kubectl apply -f samples/bookinfo/networking/bookinfo-gateway.yaml`{{execute HOST1}}
`kubectl apply -f samples/bookinfo/networking/destination-rule-all-mtls.yaml`{{execute HOST1}}
`kubectl apply -f samples/bookinfo/networking/virtual-service-reviews-test-v2.yaml`{{execute HOST1}}
`kubectl apply -f samples/bookinfo/networking/virtual-service-reviews-50-v3.yaml`{{execute HOST1}}
`kubectl apply -f samples/bookinfo/networking/virtual-service-reviews-v3.yaml`{{execute HOST1}}
`istioctl get virtualservices`{{execute HOST1}}

https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/productpage

https://[[HOST_SUBDOMAIN]]-3000-[[KATACODA_HOST]].environments.katacoda.com/dashboard/db/istio-mesh-dashboard

https://[[HOST_SUBDOMAIN]]-16686-[[KATACODA_HOST]].environments.katacoda.com/

https://[[HOST_SUBDOMAIN]]-8088-[[KATACODA_HOST]].environments.katacoda.com/dotviz

Run the command to load the product page calls

`while true; do
  curl -s https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/productpage > /dev/null
  echo -n .;
  sleep 0.2
done`{{execute HOST1}}

Run the command to load the product page calls from node
`while true; do
  curl -s https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/productpage > /dev/null
  echo -n .;
  sleep 0.2
done`{{execute HOST2}}
