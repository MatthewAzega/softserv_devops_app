FROM alpine:latest
COPY lighttpd.conf /etc/lighttpd/
RUN mkdir /var/www
RUN mkdir /var/www/html
COPY app.sh /var/www/html
RUN chmod 770 /var/www/html/app.sh
RUN apk update / && apk upgrade
RUN apk add lighttpd
RUN apk add curl
EXPOSE 8080
RUN ./var/www/html/app.sh
RUN echo "*       *       *       *       *       /var/www/html/app.sh" >> /etc/crontabs/root
RUN crond -b
CMD ["lighttpd","-D","-f","/etc/lighttpd/lighttpd.conf"]