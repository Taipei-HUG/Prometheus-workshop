#!/bin/bash
kubectl -n monitoring delete secret alertmanager-main
sleep 10
kubectl -n monitoring apply -f ./alertmanager-secret.yaml
