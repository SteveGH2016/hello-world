echo "Staing entrypoint updatehost" >> /log.txt
sed -i "s/HOST/${HOSTNAME}/g" /var/www/localhost/htdocs/index.html
echo "Done Entrypoint " >> /log.txt

/usr/sbin/httpd -D  FOREGROUND
cat /var/www/localhost/htdocs/index.html >> /log.txt
