#!/bin/bash
kubectl -n monitoring delete secret alertmanager-main
sleep 10
kubectl -n monitoring create secret generic alertmanager-main --from-file=alertmanager.yaml
