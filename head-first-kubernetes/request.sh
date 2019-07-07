#!/bin/bash
UrlPath=$1
kubectl exec busybox -- curl hello.default.svc:8080/$UrlPath