
Install Istio

## Task

Download  Istio 
`curl -L https://git.io/getLatestIstio | ISTIO_VERSION=1.0.0 sh -`{{execute HOST1}}

Add istio to path
`export PATH="$PATH:/root/istio-1.0.0/bin"`{{execute HOST1}}

`cd /root/istio-1.0.0`{{execute HOST1}}


`kubectl apply -f install/kubernetes/helm/istio/templates/crds.yaml -n istio-system`{{execute HOST1}}


`kubectl apply -f install/kubernetes/istio-demo-auth.yaml`{{execute HOST1}}

Check the status of the pods
`kubectl get pods -n istio-system`{{execute HOST1}}

Extract the Host1 IP
`export EXT_IP=$(hostname -I |  head -n1 | awk '{print $1;}')`{{execute HOST1}}

Update the katacode service file with the external IP
`sed -i -- 's/extip/'$EXT_IP'/g' /root/katacoda.yml`{{execute HOST1}}


`kubectl apply -f /root/katacoda.yml`{{execute HOST1}}

Enable istio-injection for the default namespace

`kubectl label namespace default istio-injection=enabled`{{execute HOST1}}

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
