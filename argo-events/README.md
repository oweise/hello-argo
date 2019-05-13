Installation
============

1. Create NS "argo-events"

```
kubectl create namespace argo-event
```

2. Set SA default roles

```
kubectl create rolebinding default-admin --clusterrole=admin --serviceaccount=default:default
```

3. Install argo/argo-event

From this dir:

```
kubectl apply -f .
```
4. Install EventSource/Gateway/Sensor

From this dir:

```
kubectl apply -f webhook
```

5. Port-forward zum gateway-pod

```
kubectl port-forward -n argo-events webhook-gateway-http 9003:12000
```


6. Trigger hook

From this dir:

```
webhook/trigger-webhook.sh http://localhost:9003
```
