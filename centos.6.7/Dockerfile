FROM centos:6.7

RUN yum clean all

RUN yum install -y wget which

# Install Java.
RUN cd ~ && wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/7u79-b15/jdk-7u79-linux-x64.rpm" && yum localinstall -y jdk-7u79-linux-x64.rpm

# Setup a build environment
RUN yum install -y \
 gcc gcc-c++ make openssl-devel \
 python \
 automake \
 autoconf \
 libcppunit-dev \
 subversion \
 git \
 libtool

# Install the other tools we need
RUN yum install -y \
 ant \
 ant-optional \
 maven \
 emacs

RUN yum clean all

CMD ["bash"]
