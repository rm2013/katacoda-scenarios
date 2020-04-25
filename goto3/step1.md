## Kubernetes Deployment

This will start kubernetes deployment. Please wait until it complete.

#### Verifiy kubernetes is installed properly

`kubectl get pods`{{execute}}

#### Create a namespace
A namespace is to allocate kubernetes resources to handle user access. Resources in each namespace will adhere to the policies defined at the namespace. This facilitates in providing group level control over the resources defined in the namespace. We will use this namespace to deploy all our applications including kafka 

`kubectl create namespace testspace`{{execute}}

#### List all the namespaces
This command will list out all the namespaces and it should display testspace as a namespace as well.
`kubectl get namespaces`{{execute}}

