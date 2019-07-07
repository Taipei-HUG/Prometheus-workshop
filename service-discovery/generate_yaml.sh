#!/bin/bash
kubectl create secret generic prometheus-additional-scrape-configs -n monitoring --from-file=scrape_configs/additional-scrape-configs.yaml --dry-run -o yaml > manifests/prometheus-additional-scrape-configs.yaml