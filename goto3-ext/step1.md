## Kubernetes Deployment

Kubernetes deployment should start automatically. Please wait until it complete.

#### Verify kubernetes installation
To verify the installation we will use 'kubectl' to get all namespaces

`kubectl get namespaces`{{execute}}

#### Create a namespace
A namespace is used to allocate kubernetes resources to manage access to a group of resources. 
Resources in each namespace will adhere to the policies defined at the namespace. 
This facilitates in providing group level control over the resources defined in the namespace. 
Next we will create a namespace for our demo called 'testspace'

`kubectl create namespace testspace`{{execute}}

#### List all the namespaces
This command will list out all the namespaces including the testspace we just created.
`kubectl get namespaces`{{execute}}

