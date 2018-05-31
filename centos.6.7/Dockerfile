FROM centos:6.7

RUN yum clean all

RUN yum install -y yum-plugin-ovl

RUN yum install -y wget which

# Install Java.
RUN cd ~ && wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/7u79-b15/jdk-7u79-linux-x64.rpm" && yum localinstall -y jdk-7u79-linux-x64.rpm

ENV JAVA_HOME /usr/java/jdk1.7.0_79
ENV PATH $JAVA_HOME/bin:$PATH

# Setup a build environment
RUN yum install -y \
 gcc gcc-c++ make openssl-devel \
 tar \
 unzip \
 python \
 automake \
 autoconf \
 libcppunit-dev \
 subversion \
 libtool \
 lcov

# Install a reasonably recent version of git
RUN yum install -y \
 curl-devel expat-devel gettext-devel openssl-devel zlib-devel \
 gcc perl-ExtUtils-MakeMaker

RUN cd /opt && wget https://www.kernel.org/pub/software/scm/git/git-2.8.2.tar.gz && mkdir git && cd git && tar xzf ../git-*.tar.gz && cd git-* && make prefix=/usr/local all && make prefix=/usr/local install && cd ../.. && rm -fr git

# Install the other tools we need
RUN yum install -y \
 emacs-nox

# Install Ant - centos 6 is on a very old version
RUN cd /opt && wget https://archive.apache.org/dist/ant/binaries/apache-ant-1.9.7-bin.tar.gz && tar -xaf apache-ant-1.9.7-bin.tar.gz && ln -s /opt/apache-ant-1.9.7/bin/ant /usr/local/bin/ant

# Install mvn
RUN cd /opt && wget http://www-us.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz && tar -xaf apache-maven-3.3.9-bin.tar.gz && ln -s /opt/apache-maven-3.3.9/bin/mvn /usr/local/bin/mvn

# Install JCE policy file
RUN cd ~ && wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jce/7/UnlimitedJCEPolicyJDK7.zip" && unzip UnlimitedJCEPolicyJDK7.zip && cp UnlimitedJCEPolicy/*.jar $JAVA_HOME/jre/lib/security/.

RUN yum clean all

CMD ["bash"]
