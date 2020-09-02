


### Install krew

`(
   set -x; cd "$(mktemp -d)" &&
   curl -fsSLO "https://github.com/kubernetes-sigs/krew/releases/latest/download/krew.tar.gz" &&
   tar zxvf krew.tar.gz &&
   KREW=./krew-"$(uname | tr '[:upper:]' '[:lower:]')_amd64" &&
   "$KREW" install krew
 )`{{execute HOST1}}


Add krew to the path

`export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"`{{execute HOST1}}

Verify the installation of krew
`kubectl krew version`{{execute HOST1}}

Check for installed plugins
`kubectl plugin list`{{execute HOST1}}
