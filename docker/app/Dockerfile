FROM centos:6.9

ENV PHP_VERSION 5.3.3
ENV HTTPD_VERSION 2.2.15
ENV XDEBUG_VERSION 2.2.7

WORKDIR /var/www

RUN yum update -y \
 && yum install -y \
      php-${PHP_VERSION} \
      php-devel \
      php-pear \
      php-mbstring \
      php-mysql \
      php-pecl-apc \
      php-gd \
      gcc \
      make \
      httpd-${HTTPD_VERSION} \
      mod_ssl \
      postfix \
      cyrus-sasl-plain \
      mailx \
 && pecl install xdebug-${XDEBUG_VERSION} \
 && touch /var/log/httpd/access_log \
 && touch /var/log/httpd/error_log \
 && touch /var/log/xdebug.log \
 && mkdir -p /etc/pki/tls/certs \
 && mkdir -p /etc/pki/tls/private \
 && openssl genrsa 4096 > server.key \
 && openssl req -new -key server.key -out server.csr -subj '/C=JP/ST=Tokyo/L=Tokyo/O=Example Ltd./OU=Web/CN=example.com' \
 && openssl x509 -req -in server.csr -days 3650 -req -signkey server.key > server.crt \
 && mv server.crt /etc/pki/tls/certs/ \
 && mv server.key /etc/pki/tls/private/ \
 && rm -f server.csr \
 && rm -f /etc/httpd/conf.d/ssl.conf \
 && ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

COPY ./entrypoint.sh /
COPY ./etc/httpd/conf/httpd.conf /etc/httpd/conf/
COPY ./etc/httpd/conf.d /etc/httpd/conf.d
COPY ./etc/php.d/xdebug.ini /etc/php.d/xdebug.ini
COPY ./etc/php.d/timezone.ini /etc/php.d/timezone.ini
COPY ./etc/postfix/main.cf /etc/postfix/main.cf
COPY ./etc/postfix/sasl_passwd /etc/postfix/sasl_passwd

ENTRYPOINT [ "/entrypoint.sh" ]
