FROM centos:7
RUN yum install httpd net-tools php -y
COPY index.html /var/www/html/
CMD /usr/sbin/httpd -DFOREGROUND
EXPOSE 80/tcp
CMD ["/usr/sbin/httpd","-DFOREGROUND"]
