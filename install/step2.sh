#!/bin/bash
cluster_name=workshop${RANDOM}

# Create eks cluster using eksctl
echo "Creating eks cluster and node group with two t3.large instances ..."
sed -i "s/workshop/${cluster_name}/" eks_cluster.yml
eksctl create cluster -f eks_cluster.yml

# Get KUBECONFIG then kubectl can work
aws eks update-kubeconfig --name ${cluster_name}

# Test if kubernate cluster works good
kubectl get all

echo 'Done setting EKS.'
