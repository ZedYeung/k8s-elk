# ELK on Kubernetes
Deploy Elasticsearch, Logstash, Kibana, Filebeat on Kubernetes

# Getting started
`./run.sh`
or
`kubectl apply -f ${folder-name}`
for the specific module

The order is matter for the dependencies

# Expose
The load-balancer would expose the default port  
```
Elasticsearch:9200
Kibana:5601
```
