

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

