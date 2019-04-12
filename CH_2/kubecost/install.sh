#!/bin/bash
kubectl create clusterrolebinding cluster-self-admin-binding --clusterrole=cluster-admin --serviceaccount=kube-system:default
helm repo add kubecost https://kubecost.github.io/cost-analyzer/ 
helm install kubecost/cost-analyzer --namespace kubecost --name kubecost --set kubecostToken="d3JhaXRoYWxsZW5AZ21haWwuY29txm343yadf98"
kubectl patch service kubecost-cost-analyzer --namespace kubecost -p '{"spec":{"type":"LoadBalancer"}}' 
