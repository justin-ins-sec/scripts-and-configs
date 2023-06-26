#!/bin/bash

export KUBECONFIG="$(find ~/.kube -maxdepth 1 -type f | tr '\n' ':')"
echo $KUBECONFIG

kubectl config view --flatten > all-in-one-kubeconfig.yaml
mv all-in-one-kubeconfig.yaml ~/.kube/config
