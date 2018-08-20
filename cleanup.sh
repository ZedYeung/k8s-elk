#!/bin/bash
kubectl delete -f ./00-namespace.yml
kubectl delete -f ./rbac-namespace-default/

kubectl delete -f ./elasticsearch/
kubectl delete -f ./logstash/
kubectl delete -f ./kibana/

kubectl delete -f ./localhost-services/
