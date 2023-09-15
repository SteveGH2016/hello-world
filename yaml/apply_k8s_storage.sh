#!/bin/sh 
echo "starting configuring storage"
echo "Associate iam provider ..."
eksctl utils associate-iam-oidc-provider --region=eu-central-1 --cluster=fleetman --approve
echo "create iam service account ..."
sleep 2
eksctl create iamserviceaccount --name ebs-csi-controller-sa --namespace kube-system --cluster fleetman --attach-policy-arn arn:aws:iam::aws:policy/service-role/AmazonEBSCSIDriverPolicy --approve  --role-only  --role-name AmazonEKS_EBS_CSI_DriverRole
echo "create addon for ia driver"
sleep 2
eksctl create addon --name aws-ebs-csi-driver --cluster fleetman --service-account-role-arn arn:aws:iam::$(aws sts get-caller-identity --query Account --output text):role/AmazonEKS_EBS_CSI_DriverRole –force
echo "Done"

