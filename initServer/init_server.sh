OSRELEASE=`cat /etc/os-release |grep -i rhel`
if [ "z" = "z$OSRELEASE" ] ; then
  echo "running apt-get for ubuntu"
  sudo apt-get -y update
  sudo apt-get -y upgrade
else
  echo "running yum for Red Hat"
  sudo yum -y update 
  sudo yum -y upgrade 
fi
