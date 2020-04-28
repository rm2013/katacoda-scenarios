## Review Kafka deployment files 

In this step we will review all the elements of kafka eco system in kubernetes.
 There is lot going on here. In general a yml file is used to define and deploy kubernetes elements. 


### Review Storageclass and Persistent volume

#### Locate /root/pv/000storageclass.yml
Please note the reclaimPolicy, which is set as Retain. 
This means that data will be retained, it can also set as Delete. This is used by the Persistent volume.

#### Locate /root/pv/010pv-volume.yml 
This defines the persistent volume based on the storage class.
As you can see this is usual the storageclass which was created earlier.
 
### Review zookeeper elements 

#### Locate /root/zkp/100zookeeper.yml
This defines a kubernetes service for zookeeper so that other services can access the zookeeper pods. 

#### Locate /root/zkp/110zookeeper-headless.yml
This headless service manages the statefulset

#### Locate  /root/zkp/110zookeeper-statefulset.yml
This defines the actual zookeeper pods, which are stateful, it uses the headless service to manage these pods

#### Locate /root/zkp/110zookeeper-disruptionbudget.yml
This defines the disruption that can be tolerated

### Review Kafka Elements

#### Locate /root/kfk/200kafka.yml
This defines a kubernetes service for kafka so that other services can access the kafka broker on port 9092 

#### Locate /root/kfk/210kafka-headless.yml
This headless service manages the statefulset

#### Locate  /root/zkp/220kafka-statefulset.yml
This defines the actual kafka pods, which are stateful, it uses the headless service to manage these pods

In the next steop we will deploy these.