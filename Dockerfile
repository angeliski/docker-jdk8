FROM ubuntu:groovy-20210614
MAINTAINER Rogerio Angeliski <angeliski@hotmail.com>

RUN apt-get install -y software-properties-common

RUN add-apt-repository -y ppa:webupd8team/java && \ 
	apt-get update && \
	echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections && \
	apt-get install -y \
	oracle-java8-installer \
	oracle-java8-set-default \
	maven

VOLUME /source	

WORKDIR /source
