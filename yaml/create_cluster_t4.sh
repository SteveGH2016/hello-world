#eksctl create cluster --name fleetman --instance-selector-vcpus=1 --instance-selector-memory=1 --nodes-min 3 --version=1.27
echo "Generating small cluster using 1 vCPU and 1 G memory"
eksctl create cluster -f  gen-cluster_4_cpu.yaml
echo "Done"
