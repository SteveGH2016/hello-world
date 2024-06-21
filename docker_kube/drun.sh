#kubectl delete -n httpd deployment example-app-dep
docker stop myapache
docker rm myapache
#docker run -it --name myapache --dns 127.0.0.53 -d -p 8080:80 -p 8022:22 apache_image:1.0
#docker run -it --name myapache --network="host" -d -p 8080:80 -p 8022:22 apache_image:1.0
docker run -it --name myapache  -d -p 8080:80 -p 8022:22 apache_image:1.0
docker ps -a |grep -i myapache
