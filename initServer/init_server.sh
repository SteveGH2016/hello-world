OSRELEASE=`cat /etc/os-release |grep -i rhel`
if [ "z" = "z$OSRELEASE" ] ; then
  echo "running apt-get for ubuntu"
  sudo apt-get -y update
  sudo apt-get -y upgrade
  echo "installung git "
  sudo apt-get install -y git
else
  echo "running yum for Red Hat"
  sudo yum -y update 
  sudo yum -y upgrade 
  echo "installing git "
  sudo yum install -y git 
fi

git config --global user.email s_v112@yahoo.de
git config --global user.name "StefanV"

mkdir ~/git 
cd ~/git 

