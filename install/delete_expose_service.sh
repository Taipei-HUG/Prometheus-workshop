#!/bin/bash

kubectl delete service grafana-80 -n monitoring
kubectl delete service prometheus-k8s-80 -n monitoring
kubectl delete service my-pushgateway-80 -n monitoring
kubectl delete service alertmanager-main-80 -n monitoring
