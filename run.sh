#!/bin/bash
sudo mkdir -p /usr/share/logstash
sudo cp -r ./logstash/pipeline /usr/share/logstash/

kubectl apply -f ./storage_class

kubectl apply -f ./00-namespace.yml

kubectl apply -f ./elasticsearch/
kubectl apply -f ./kibana/

kubectl apply -f ./logstash/
kubectl apply -f ./filebeat/
