FROM httpd:2.4.46-alpine
COPY ./my-httpd.conf /usr/local/apache2/conf/httpd.conf
RUN mkdir -p /etc/htpasswd
ARG PROXY_USER
ARG PROXY_PASSWORD
RUN htpasswd -b -c /etc/htpasswd/.htpasswd $PROXY_USER $PROXY_PASSWORD
