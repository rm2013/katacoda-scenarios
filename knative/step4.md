New

`export ADDRESS=$(kubectl get node --output 'jsonpath={.items[0].status.addresses[0].address}'):$(kubectl get svc istio-ingressgateway --namespace istio-system --output 'jsonpath={.spec.ports[?(@.port==80)].nodePort}')`{{execute HOST1}}

`export SERVICE=$(kubectl get ksvc helloworld-go --output jsonpath='{.status.domain}')`{{execute HOST1}}

`echo Service $SERVICE is at $ADDRESS`{{execute HOST1}}

`curl -v -H "Host: $SERVICE" http://$ADDRESS`{{execute HOST1}}






Old

Copy kafka definition files
` chmod +x /opt/init.sh && /opt/init.sh`{{execute}}

Create a namespace and deploy Persistant Volume and Zookeepers
`kubectl create namespace testspace && \
 kubectl create -f /root/pv && \
 kubectl create -f /root/zkp`{{execute}}

Wait for the pods to come up
`watch kubectl -ntestspace get po`{{execute HOST1}}

Clear the command when the pods come up
`clear`{{execute interrupt HOST1}}

Deploy kafka broker
`kubectl create -f /root/kfk`{{execute}}

Wait for the kafka-producer-consumer pod to come up
`watch kubectl -ntestspace get po`{{execute HOST1}}

Clear the command when the pods come up
`clear`{{execute interrupt HOST1}}

