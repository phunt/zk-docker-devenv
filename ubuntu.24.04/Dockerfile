FROM ubuntu:24.04

ENV DEBIAN_FRONTEND="noninteractive"

# Setup a build environment
RUN apt update && apt upgrade -y && apt install -y \
  build-essential \
  pkg-config \
  net-tools \
  2to3 \
  python3-full \
  python-is-python3 \
  python-dev-is-python3 \
  python3-setuptools-whl \
  python3-pip-whl \
  python3-pip \
  python3-virtualenv \
  software-properties-common \
  automake \
  autoconf \
  libcppunit-dev \
  libncurses5-dev \
  libssl-dev \
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
  openjdk-21-jdk\
  && rm -rf /var/lib/apt/lists/*

CMD ["bash"]
