#!/bin/bash

# Create eks cluster using eksctl
eksctl create cluster -f cluster.yaml

# Get KUBECONFIG then kubectl can work
aws eks update-kubeconfig --name workshop

# Test if kubernate cluster works good
kubectl get all
