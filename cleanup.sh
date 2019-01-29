#!/bin/bash
kubectl delete -f ./storage_class

kubectl delete -f ./00-namespace.yml

kubectl delete -f ./elasticsearch/
kubectl delete -f ./kibana/

kubectl delete -f ./logstash
kubectl delete -f ./filebeat
