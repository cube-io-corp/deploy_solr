#!/bin/bash

kubectl create ns solr
helm template . --name solr > solr.yaml
kubectl apply -f solr.yaml -n solr
rm solr.yaml
