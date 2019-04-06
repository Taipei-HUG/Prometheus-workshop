#!/bin/bash

# Setup helm repo with coreos
helm repo add coreos https://s3-eu-west-1.amazonaws.com/coreos-charts/stable/

# Install prometheus operator into kubernetes namespace monitoring
helm install coreos/prometheus-operator --name prometheus-operator --namespace monitoring

# Install kube-prometheus 
helm install coreos/kube-prometheus --name kube-prometheus --namespace monitoring

# Check all pod state in Running
echo 'kubectl get pod -n=monitoring'
kubectl get pod -n=monitoring
