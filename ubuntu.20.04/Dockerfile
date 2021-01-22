FROM ubuntu:20.04

ENV DEBIAN_FRONTEND="noninteractive"

# Setup a build environment
RUN apt update && apt upgrade -y && apt install -y \
  build-essential \
  net-tools \
  python \
  python-dev \
  python-pip-whl \
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
  && pip3 install --upgrade pip && pip3 install --upgrade virtualenv && pip3 install pipenv \
  && rm -rf /var/lib/apt/lists/*

CMD ["bash"]
