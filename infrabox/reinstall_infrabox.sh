#!/bin/bash

kubectl delete crd ibfunctioninvocations.core.infrabox.net
kubectl delete crd ibfunctions.core.infrabox.net
kubectl delete crd ibpipelines.core.infrabox.net
kubectl delete crd ibpipelineinvocations.core.infrabox.net
kubectl delete clusterrolebinding infrabox-master	
kubectl delete ns infrabox-system
kubectl delete ns infrabox-worker
kubectl create ns infrabox-system
kubectl create ns infrabox-worker
helm install --namespace infrabox-system -f ~/Desktop/JavaSPEKTRUM/K8S\ CICD/infrabox-config.yml --wait /tmp/infrabox/deploy/infrabox

