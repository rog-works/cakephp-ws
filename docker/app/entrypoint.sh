#!/bin/sh

if [ ! -e /etc/postfix/sasl_passwd.db ]; then
	sed -i -e "s/some_address/${GMAIL_ADDRESS}/g" /etc/postfix/sasl_passwd
	sed -i -e "s/some_password/${GMAIL_PASSWORD}/g" /etc/postfix/sasl_passwd
	chmod 600 /etc/postfix/sasl_passwd
	postmap /etc/postfix/sasl_passwd
fi

service postfix start
service httpd start

tail -f /var/log/httpd/*_log
