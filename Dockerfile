FROM ubuntu:16.04
RUN apt-get -y update && apt-get -y install apache2-utils squid3
COPY docker-entrypoint.sh /usr/local/bin/
RUN mv -f /etc/squid/squid.conf /etc/squid/squid.conf.original
COPY squid.conf /etc/squid/
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["/usr/sbin/squid","-N","-YC","-f","/etc/squid/squid.conf"]
