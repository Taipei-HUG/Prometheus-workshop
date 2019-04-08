#!/bin/bash

# Install pushgateway via Helm
helm install --name prom-pushgateway stable/prometheus-pushgateway --set serviceMonitor.enabled=true --namespace=monitoring

# Expose pushgateway to LBS
kubectl expose deployment -n monitoring prom-pushgateway-prometheus-pushgateway --port=9091 --target-port=9091 --name=my-pushgateway --type=LoadBalancer
