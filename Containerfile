FROM fedora:latest
WORKDIR /var/www/html/
RUN dnf install -y tuxpaint vim httpd
ADD myinfo.html /var/www/html/
EXPOSE 80/tcp
ENTRYPOINT /usr/sbin/httpd -DFOREGROUND