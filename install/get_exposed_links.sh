#!/bin/sh

echo "Grafana"
echo "http://"$(kubectl get svc grafana-80 -n monitoring -o jsonpath="{.status.loadBalancer.ingress[0].hostname}")""

echo "Prometheus"
echo "http://"$(kubectl get svc prometheus-k8s-80 -n monitoring -o jsonpath="{.status.loadBalancer.ingress[0].hostname}")""

echo "Pushgateway"
echo "http://"$(kubectl get svc my-pushgateway-80 -n monitoring -o jsonpath="{.status.loadBalancer.ingress[0].hostname}")""

echo "Alertmanager"
echo "http://"$(kubectl get svc alertmanager-main-80 -n monitoring -o jsonpath="{.status.loadBalancer.ingress[0].hostname}")""
