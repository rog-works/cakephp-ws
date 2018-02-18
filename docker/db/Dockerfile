FROM mysql:5.5.56

RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

COPY ./etc/mysql/my.cnf /etc/mysql/
COPY ./root/init.sql /root/
