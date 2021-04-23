FROM docker.io/centos
MAINTAINER widiastawan <widiastawan@gmail.com>
RUN yum install -y httpd && \
        yum clean all

EXPOSE 80
COPY ./src/ /var/www/html
USER apache
ENTRYPOINT ["/usr/sbin/httpd"]
CMD ["httpd", "-D", "FOREGOUND"]