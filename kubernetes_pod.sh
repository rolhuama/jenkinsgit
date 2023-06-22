#!/bin/bash

kubectl apply -f pod.yaml
kubectl port-forward pod/pod 9000:8080
