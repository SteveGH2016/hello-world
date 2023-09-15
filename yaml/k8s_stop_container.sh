#!/bin/sh 

echo "stopping all services "

kubectl delete -f services.yaml
sleep 2
kubectl delete -f workloads.yaml
sleep 2
kubectl delete -f mongo-stack.yaml
sleep 2

kubectl delete -f storage-aws.yaml
sleep 2
echo "Done"
echo ""

