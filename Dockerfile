FROM kokspflanze/centos-systemd:latest

MAINTAINER "KoKsPfLaNzE" <kokspflanze@protonmail.com>

RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

# normal updates
RUN yum -y update

# tools
RUN yum -y install epel-release iproute

# nginx
RUN yum -y install nginx

# cleanup
RUN yum clean all

EXPOSE 80
EXPOSE 443

RUN systemctl enable nginx

CMD ["/usr/sbin/init"]