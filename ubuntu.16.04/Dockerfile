FROM ubuntu:16.04

# Setup a build environment
RUN apt-get update && apt-get upgrade -y && apt-get install -y \
 build-essential \
 net-tools \
 python \
 python-dev \
 software-properties-common \
 automake \
 autoconf \
 libcppunit-dev \
 subversion \
 git \
 libtool \
 wget \
 cmake

# Install Java.
RUN \
  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  add-apt-repository -y ppa:webupd8team/java && \
  apt-get update && \
  apt-get install -y oracle-java8-installer && \
  rm -rf /var/lib/apt/lists/* && \
  rm -rf /var/cache/oracle-jdk8-installer

ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

# Install the other tools we need
RUN apt-get update && apt-get install -y \
 ant \
 ant-optional \
 maven \
 emacs24-nox

CMD ["bash"]
