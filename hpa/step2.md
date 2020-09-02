
Install  clogs plugin

### Install clogs
Download clogs release
`wget https://github.com/rm2013/kubectl-clogs/releases/download/v0.0.2/kubectl-clogs_0.0.2_Linux_x86_64.tar.gz`{{execute HOST1}}

Unzip clogs

`tar xvfz kubectl-clogs_0.0.2_Linux_x86_64.tar.gz`{{execute HOST1}}

Move the clogs file to /usr/local/bin
 
`mv kubectl-clogs /usr/local/bin`{{execute HOST1}}

Validate the installation of clogs
`kubectl plugin list`{{execute HOST1}}

Run a test
`kubectl clogs -A kube`{{execute HOST1}}
