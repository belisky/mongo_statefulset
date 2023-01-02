#!/bin/bash
kubectl apply -f mongodb-config.yaml
echo "----------------------------------------------------------------"
kubectl apply -f demo-crm-service.yaml
echo "----------------------------------------------------------------"
kubectl apply -f googlecloud_ssd.yaml
echo "-------------------------------------------------------------------"
kubectl apply -f mongo-statefulset.yaml
echo "----------------Taking a nap for 1 minute------------------------------------"
sleep 60
echo "---------------------------------------------------------------------"
kubectl get svc
kubectl get pods
 