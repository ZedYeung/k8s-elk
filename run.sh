#!/bin/bash
kubectl apply -f ./storage_class

kubectl apply -f ./00-namespace.yml

kubectl apply -f ./elasticsearch/
kubectl apply -f ./kibana/

kubectl apply -f ./load-balancer

