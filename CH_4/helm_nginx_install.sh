#!/bin/bash
echo 'Installing nginx ans nginx exporter with helm'
helm install --name nginx \
  --set controller.stats.enabled=True \
  --set controller.metrics.enabled=True \
  --set controller.metrics.serviceMonitor.enabled=True \
  --set controller.metrics.serviceMonitor.namespace=monitoring \
    stable/nginx-ingress
echo 'Nginx installed.'
