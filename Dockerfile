FROM ubuntu:xenial

#LABEL virtualmin

MAINTAINER Samsul Ma'arif <hay@samsul.web.id>

# buat password untuk akun root
RUN printf admin\\nadmin\\n | passwd

RUN apt-get update \
	&& apt-get -y install wget perl iptables apt-utils apt-show-versions \
	&& wget http://software.virtualmin.com/gpl/scripts/install.sh \
	&& apt-get -y autoremove

RUN chmod +x install.sh \
	&& sh install.sh -f --hostname $(hostname -f).id \
	&& apt-get -y autoremove

EXPOSE 22 25 10000 20000
EXPOSE 80 443 21 20 110 143
EXPOSE 53/udp 53/tcp

ENTRYPOINT ["/bin/bash"]
