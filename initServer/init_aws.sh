cd
mkdir Downloads 
cd Downloads

echo "Install EKS"
curl -sLO "https://github.com/eksctl-io/eksctl/releases/latest/download/eksctl_$PLATFORM.tar.gz"

tar -xzf eksctl_$PLATFORM.tar.gz -C /tmp 
rm eksctl_$PLATFORM.tar.gz

sudo mv /tmp/eksctl /usr/local/bin
chmod +x /usr/local/bin/eksctl 

echo "Install  kubernetes"

curl -O https://s3.us-west-2.amazonaws.com/amazon-eks/1.27.4/2023-08-16/bin/linux/amd64/kubectl

chmod +x kubectl 
mv kubectl /usr/local/bin 

echo "install AWS 2"
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip

sudo ./aws/install
aws --version
/usr/local/bin/aws --version

