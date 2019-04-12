#!/bin/bash
kubectl patch statefulset prometheus-k8s -n monitoring -p '{"spec":{"template":{"metadata":{"annotations":{"last-manual-restart":"'$(date +%F@%R:%S)'"}}}}}' 
kubectl get po prometheus-k8s-0 -n monitoring