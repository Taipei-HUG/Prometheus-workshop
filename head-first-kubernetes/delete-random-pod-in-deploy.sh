#!/bin/bash

Count=$(kubectl get po -l app=hello -o go-template='{{len .items}}')
Needle=$(( $RANDOM % $Count ))
IFS='@' read -ra PodNames <<< "$(kubectl get po -l app=hello -o go-template='{{range .items}}{{ .metadata.name }}@{{ end }}')"
PodNameForDelete=${PodNames[$Needle]}
kubectl delete po $PodNameForDelete
kubectl get po