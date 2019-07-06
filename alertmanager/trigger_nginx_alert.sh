#!/bin/bash
nginx_url=http://$(kubectl get svc nginx-nginx-ingress-controller -o jsonpath="{.status.loadBalancer.ingress[0].hostname}")

echo 'curl nginx ELB 1000 times ...'
for i in {1..1000}
do
  curl -s ${nginx_url} > /dev/null
done

echo 'Done'
