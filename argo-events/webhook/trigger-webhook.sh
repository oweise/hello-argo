#!/bin/bash

export WEBHOOK_SERVICE_URL=$1
echo $WEBHOOK_SERVICE_URL
curl -v -d '{"message":"this is my first webhook", "url": "https://github.com/oweise/hello-argo.git"}' -H "Content-Type: application/json" -X POST $WEBHOOK_SERVICE_URL/index
