

### Download istio

Download the istio version 1.4.6


`export ISTIO_VERSION=1.4.6 && 
curl -L https://git.io/getLatestIstio | sh - && cd istio-${ISTIO_VERSION}`{{execute HOST1}}

`for i in install/kubernetes/helm/istio-init/files/crd*yaml; do kubectl apply -f $i; done`{{execute HOST1}}

`kubectl apply -f /opt/istio-system.yml`{{execute HOST1}}
 
 `helm template --namespace=istio-system \
    --set prometheus.enabled=false \
    --set mixer.enabled=false \
    --set mixer.policy.enabled=false \
    --set mixer.telemetry.enabled=false \
    --set pilot.sidecar=false \
    --set pilot.resources.requests.memory=128Mi \
    --set galley.enabled=false \
    --set global.useMCP=false \
    --set security.enabled=false \
    --set global.disablePolicyChecks=true \
    --set sidecarInjectorWebhook.enabled=false \
    --set global.proxy.autoInject=disabled \
    --set global.omitSidecarInjectorConfigMap=true \
    --set gateways.istio-ingressgateway.autoscaleMin=1 \
    --set gateways.istio-ingressgateway.autoscaleMax=2 \
    --set pilot.traceSampling=100 \
    --set global.mtls.auto=false \
    install/kubernetes/helm/istio \
    > ./istio-lean.yaml`{{execute HOST1}}

`kubectl apply -f istio-lean.yaml`{{execute HOST1}}

# Add the extra gateway.
`helm template --namespace=istio-system \
   --set gateways.custom-gateway.autoscaleMin=1 \
   --set gateways.custom-gateway.autoscaleMax=2 \
   --set gateways.custom-gateway.cpu.targetAverageUtilization=60 \
   --set gateways.custom-gateway.labels.app='cluster-local-gateway' \
   --set gateways.custom-gateway.labels.istio='cluster-local-gateway' \
   --set gateways.custom-gateway.type='ClusterIP' \
   --set gateways.istio-ingressgateway.enabled=false \
   --set gateways.istio-egressgateway.enabled=false \
   --set gateways.istio-ilbgateway.enabled=false \
   --set global.mtls.auto=false \
   install/kubernetes/helm/istio \
   -f install/kubernetes/helm/istio/example-values/values-istio-gateways.yaml \
   | sed -e "s/custom-gateway/cluster-local-gateway/g" -e "s/customgateway/clusterlocalgateway/g" \
   > ./istio-local-gateway.yaml`{{execute HOST1}}

`kubectl apply -f istio-local-gateway.yaml`{{execute HOST1}}

`kubectl get pods --namespace istio-system`{{execute HOST1}}

`kubectl get svc -nistio-system`{{execute HOST1}}

`kubectl create ns knative-serving`{{execute HOST1}}

`kubectl apply --filename https://github.com/knative/net-istio/releases/download/v0.14.0/release.yaml`{{execute HOST1}}

`kubectl --namespace istio-system get service istio-ingressgateway`{{execute HOST1}}


Change the IP 

`kubectl edit cm config-domain --namespace knative-serving`{{execute HOST1}}


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

