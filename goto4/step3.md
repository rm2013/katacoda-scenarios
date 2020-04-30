## Setup BookInfo example and validate isto elements

### Setup isto for default namespace
Enable istio-injection for the default namespace
`kubectl label namespace default istio-injection=enabled`{{execute HOST1}}

Deploy bookinfo example
`kubectl apply -f <(istioctl kube-inject -f samples/bookinfo/platform/kube/bookinfo.yaml) &&\
 kubectl apply -f samples/bookinfo/networking/bookinfo-gateway.yaml && \
 kubectl apply -f samples/bookinfo/networking/destination-rule-all-mtls.yaml && \
 kubectl apply -f samples/bookinfo/networking/virtual-service-reviews-test-v2.yaml && \
 kubectl apply -f samples/bookinfo/networking/virtual-service-reviews-50-v3.yaml && \
 kubectl apply -f samples/bookinfo/networking/virtual-service-reviews-v3.yaml && \
 istioctl get virtualservices`{{execute HOST1}}

Product page can be accessed at the link below
https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/productpage

Grafana can be accessed at the link below
https://[[HOST_SUBDOMAIN]]-3000-[[KATACODA_HOST]].environments.katacoda.com/dashboard/db/istio-mesh-dashboard

Service graph showing the request path can be visialized at the link below
https://[[HOST_SUBDOMAIN]]-8088-[[KATACODA_HOST]].environments.katacoda.com/dotviz

Next we will generate a constant load from Host2 on product page 
and observe the change in operation graph in grafana and in service graph

Run the command to load the product page calls from Host2
`while true; do
  curl -s https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/productpage > /dev/null
  echo -n .;
  sleep 0.2
done`{{execute HOST2}}
