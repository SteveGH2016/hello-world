from alpine
RUN apk update
RUN apk add  apache2
#RUN apk add  apache-utils
RUN mkdir /run/apache	 expose 80
expose 22
RUN apk add bash
RUN apk add bash-completion
RUN apk add php
RUN apk add openssl
RUN apk add nano
RUN apk add curl

RUN adduser -h /home/stefan -s /bin/sh -D stefan
RUN echo -n 'stefan:Monika10' | chpasswd

COPY filerepo/version.txt .
COPY filerepo/index.html /var/www/localhost/htdocs
COPY filerepo/updateHost.sh .
COPY filerepo/.bashrc /root
#RUN chmod +x ./updateHost.sh

CMD ["/bin/bash", "/updateHost.sh"]
#ENTRYPOINT ["/bin/bash"]
#ENTRYPOINT [ "sed -i "s/HOST/${HOSTNAME}/g" /var/www/localhost/htdocs/index.html"]
#rc-service apache2 start
#CMD ["-D", "FOREGROUND"]
#ENTRYPOINT ["/usr/sbin/httpd"]
