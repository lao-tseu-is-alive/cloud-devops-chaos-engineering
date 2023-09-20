# cloud-devops-chaos-engineering
Using the Chaos Toolkit,  “ctk”, to run Chaos Engineering experiments in Kubernetes

### preparing requirements

Install [the Chaos Toolkit](https://github.com/chaostoolkit/chaostoolkit). From your linux shell run :

    python3 -m venv .venv
    source .venv/bin/activate
    pip install -U chaostoolkit
    chaos --help

