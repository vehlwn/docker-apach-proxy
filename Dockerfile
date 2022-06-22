FROM httpd:2.4.46-alpine
COPY ./my-httpd.conf /usr/local/apache2/conf/httpd.conf
