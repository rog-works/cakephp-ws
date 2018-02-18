#!/bin/sh

service httpd start

tail -f /var/log/httpd/*_log
