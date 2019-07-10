#!/bin/bash
UrlPath=$1
kubectl exec busybox -- curl --silent hello.default.svc:8080/$UrlPath
