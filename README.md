# cloud-devops-chaos-engineering
Using the Chaos Toolkit,  “ctk”, to run Chaos Engineering experiments in Kubernetes

### Preparing requirements

##### Install [the Chaos Toolkit](https://github.com/chaostoolkit/chaostoolkit). From your linux shell run :

    python3 -m venv .venv
    source .venv/bin/activate
    pip install -U chaostoolkit
    chaos --help
    pip install -U chaostoolkit-kubernetes
    chaos discover chaostoolkit-kubernetes
    cat discovery.json |jq



##### Install [Rancher Desktop](https://rancherdesktop.io/)
Rancher Desktop is an app that provides container management and Kubernetes on the desktop. It is available for Mac (both on Intel and Apple Silicon), Windows, and Linux.



Just follow instructions at https://docs.rancherdesktop.io/getting-started/installation

##### Create your namespace 
we will create a dedicated k8s namespace :   *chaos-engineering*

     k apply -f k8s/namespace.yaml 
     k get namespaces


#### Explore the chaos activities :

List of available actions that are not deprecated :

    cat discovery.json |jq '.activities[] | select(.doc | contains("!!!DEPRECATED!!!") | not) | select(.type | contains("action")) | .name + " : " + .doc[:80] + "..."  '
