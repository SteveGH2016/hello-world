#!/bin/sh 

echo "starting all services "

kubectl apply -f storage-aws.yaml
sleep 2
kubectl apply -f mongo-stack.yaml
sleep 2
kubectl apply -f workloads.yaml
sleep 2
kubectl apply -f services.yaml
echo "Done"
echo ""
kubectl get pv 
sleep 2
kubectl get pvc 
sleep 2

