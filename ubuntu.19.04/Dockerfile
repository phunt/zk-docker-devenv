FROM ubuntu:19.04

ENV DEBIAN_FRONTEND="noninteractive"

# Setup a build environment
RUN apt-get update && apt-get upgrade -y && apt-get install -y \
  build-essential \
  net-tools \
  python \
  python-dev \
  python-pip \
  python3-pip \
  software-properties-common \
  automake \
  autoconf \
  libcppunit-dev \
  libncurses5-dev \
  subversion \
  git \
  libtool \
  wget \
  cmake \
  lcov \
  ant \
  ant-optional \
  maven \
  emacs-nox \
  openjdk-11-jdk\
  && pip2 install --upgrade pip && pip2 install --upgrade virtualenv && pip2 install pipenv \
  && pip3 install --upgrade pip && pip3 install --upgrade virtualenv && pip3 install pipenv \
  && rm -rf /var/lib/apt/lists/*

CMD ["bash"]
