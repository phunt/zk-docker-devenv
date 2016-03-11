FROM ubuntu:14.04

# Setup a build environment
RUN apt-get update && apt-get install -y \
 build-essential \
 python \
 software-properties-common \
 automake \
 autoconf \
 libcppunit-dev \
 subversion \
 git \
 libtool \
 wget

# Install Java.
RUN \
  echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  add-apt-repository -y ppa:webupd8team/java && \
  apt-get update && \
  apt-get install -y oracle-java7-installer && \
  rm -rf /var/lib/apt/lists/* && \
  rm -rf /var/cache/oracle-jdk7-installer

ENV JAVA_HOME /usr/lib/jvm/java-7-oracle

# Install the other tools we need
RUN apt-get update && apt-get install -y \
 ant \
 ant-optional \
 maven \
 emacs

CMD ["bash"]
