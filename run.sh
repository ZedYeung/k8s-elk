#!/bin/bash
sudo mkdir -p /var/lib/docker/logstash/pipeline
cp -r ./logstash/pipeline/. /var/lib/docker/logstash/pipeline

kubectl apply -f ./00-namespace.yml
kubectl apply -f ./rbac-namespace-default/

kubectl apply -f ./elasticsearch/
kubectl apply -f ./logstash/
kubectl apply -f ./kibana/

kubectl apply -f ./localhost-services/
echo $(minikube ip)
