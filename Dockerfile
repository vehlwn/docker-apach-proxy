FROM httpd:alpine
COPY ./my-httpd.conf /usr/local/apache2/conf/httpd.conf
COPY ./my-ssl.conf /usr/local/apache2/conf/extra/httpd-ssl.conf
ARG APACHE_SERVER_NAME
RUN sed --in-place "s/<APACHE_SERVER_NAME>/${APACHE_SERVER_NAME}/g" /usr/local/apache2/conf/httpd.conf /usr/local/apache2/conf/extra/httpd-ssl.conf

COPY ./owncert/certificate.pem /usr/local/apache2/conf/server.crt
COPY ./owncert/key.pem /usr/local/apache2/conf/server.key
RUN mkdir -p /etc/htpasswd
ARG APACHE_USER
ARG APACHE_PASSWORD
RUN htpasswd -b -c /etc/htpasswd/.htpasswd "${APACHE_USER}" "${APACHE_PASSWORD}"
