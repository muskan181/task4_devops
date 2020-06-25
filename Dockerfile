FROM centos:latest
RUN yum install httpd net-tools php -y
COPY index.html /var/www/html/
CMD /usr/sbin/httpd -DEFOREGROUND
EXPOSE 80/tcp
CMD ["/usr/sbin/httpd","-DFOREGROUND"]
