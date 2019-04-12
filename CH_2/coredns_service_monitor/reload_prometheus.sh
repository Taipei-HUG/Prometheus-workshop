#!/bin/bash
curl -X POST "http://"$(kubectl get svc prometheus-k8s -n monitoring -o jsonpath="{.status.loadBalancer.ingress[0].hostname}")":9090/-/reload"
kubectl logs prometheus-k8s-0 -c prometheus -n monitoring