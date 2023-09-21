#!/bin/bash
source .venv/bin/activate
chaos discover chaostoolkit-kubernetes
cat discovery.json |jq '.activities[] | select(.doc | contains("!!!DEPRECATED!!!") | not) | select(.type | contains("action"))  ' > chaostoolkit-kubernetes_actions.json
cat discovery.json |jq '.activities[] | select(.doc | contains("!!!DEPRECATED!!!") | not) | select(.type | contains("probe"))  ' > chaostoolkit-kubernetes_probe.json
