cd
mkdir Downloads 
cd Downloads

echo "Install EKS"
ARCH=amd64
PLATFORM=$(uname -s)_$ARCH

curl -sLO "https://github.com/eksctl-io/eksctl/releases/latest/download/eksctl_$PLATFORM.tar.gz"

tar -xzf eksctl_$PLATFORM.tar.gz -C /tmp 
rm eksctl_$PLATFORM.tar.gz

sudo mv /tmp/eksctl /usr/local/bin
chmod +x /usr/local/bin/eksctl 

echo "Install  kubernetes"

curl -O https://s3.us-west-2.amazonaws.com/amazon-eks/1.27.4/2023-08-16/bin/linux/amd64/kubectl

chmod +x kubectl 
sudo mv kubectl /usr/local/bin 

kubectl version 

echo "install AWS 2"
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip

sudo ./aws/install
aws --version

rm -R  aws
rm awscliv2.zip 
/usr/local/bin/aws --version

echo "sucessfully "
