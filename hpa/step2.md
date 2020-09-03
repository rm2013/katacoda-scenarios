
Create hpa

### Create HPA
`kubectl -n testspace autoscale deployment greeting --cpu-percent=20 --min=1 --max=10`{{execute HOST1}}
`kubectl -n testspace autoscale deployment time --cpu-percent=50 --min=1 --max=10`{{execute HOST1}}

Check the HPA
`kubectl -n testspace get hpa`{{execute HOST1}}

Start a load generator pod based on busybox
 
`kubectl -n testspace run -it --rm load-generator --image=busybox /bin/sh`{{execute HOST1}}

Put load by calling the greeting end point
`while true; do wget -q -O- http://greeting:8080; done`{{execute HOST1}}

Open another terminal and check the hpa
`kubectl -ntestspace get hpa`{{execute HOST1}}
