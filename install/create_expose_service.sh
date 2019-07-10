#!/bin/bash
kubectl expose service grafana --port=80 --target-port=3000 --name=grafana-80 --type=LoadBalancer -n monitoring
kubectl expose service prometheus-k8s --port=80 --target-port=9090 --name=prometheus-k8s-80 --type=LoadBalancer -n monitoring
kubectl expose service my-pushgateway --port=80 --target-port=9091 --name=my-pushgateway-80 --type=LoadBalancer -n monitoring
kubectl expose service alertmanager-main --port=80 --target-port=9093 --name=alertmanager-main-80 --type=LoadBalancer -n monitoring
