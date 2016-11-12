FROM kokspflanze/centos-systemd:latest

MAINTAINER "KoKsPfLaNzE" <kokspflanze@protonmail.com>

RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

# normal updates, tools, nginx, cleanup
RUN yum -y update \
 && yum -y install epel-release iproute crontabs \
 && yum -y install nginx \
 && yum clean all

EXPOSE 80
EXPOSE 443

COPY config/nginx.conf /etc/nginx/

RUN systemctl enable nginx \
 && systemctl enable crond

CMD ["/usr/sbin/init"]