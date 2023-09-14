#!/bin/sh 
eksctl utils associate-iam-oidc-provider --region=eu-central-1 --cluster=fleetman --approve
sleep 2
eksctl create iamserviceaccount --name ebs-csi-controller-sa --namespace kube-system --cluster fleetman --attach-policy-arn arn:aws:iam::aws:policy/service-role/AmazonEBSCSIDriverPolicy --approve  --role-only  --role-name AmazonEKS_EBS_CSI_DriverRole
sleep 2
eksctl create addon --name aws-ebs-csi-driver --cluster fleetman --service-account-role-arn arn:aws:iam::$(aws sts get-caller-identity --query Account --output text):role/AmazonEKS_EBS_CSI_DriverRole –force


