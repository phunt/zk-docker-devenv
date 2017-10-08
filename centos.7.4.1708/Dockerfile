FROM centos:7.4.1708

RUN yum clean all && rm -rf /var/cache/yum \
    && yum install -y wget which

# Install Java.
RUN cd /opt/ && wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u144-b01/090f390dda5b47b9b721c7dfaa008135/jdk-8u144-linux-x64.tar.gz" && tar xzf jdk-8u144-linux-x64.tar.gz && rm jdk-8u144-linux-x64.tar.gz && cd jdk1.8.0_144 && alternatives --install /usr/bin/java java /opt/jdk1.8.0_144/bin/java 2 && alternatives --install /usr/bin/jar jar /opt/jdk1.8.0_144/bin/jar 2 && alternatives --install /usr/bin/javac javac /opt/jdk1.8.0_144/bin/javac 2 && alternatives --set jar /opt/jdk1.8.0_144/bin/jar && alternatives --set javac /opt/jdk1.8.0_144/bin/javac

ENV JAVA_HOME=/opt/jdk1.8.0_144
ENV JRE_HOME=/opt/jdk1.8.0_144/jre
ENV PATH=$PATH:/opt/jdk1.8.0_144/bin:/opt/jdk1.8.0_144/jre/bin

# Setup a build environment
RUN yum install -y \
 gcc gcc-c++ make openssl-devel \
 tar \
 unzip \
 python \
 python-dev \
 automake \
 autoconf \
 libcppunit-dev \
 subversion \
 libtool \
 cmake

# Install a reasonably recent version of git
RUN yum install -y \
 curl-devel expat-devel gettext-devel openssl-devel zlib-devel \
 gcc perl-ExtUtils-MakeMaker

RUN cd /opt && wget https://www.kernel.org/pub/software/scm/git/git-2.14.2.tar.gz && mkdir git && cd git && tar xzf ../git-*.tar.gz && cd git-* && make prefix=/usr/local all && make prefix=/usr/local install && cd ../.. && rm -fr git

# Install the other tools we need
RUN yum install -y \
 emacs-nox

# Install Ant
RUN cd /opt && wget https://archive.apache.org/dist/ant/binaries/apache-ant-1.9.7-bin.tar.gz && tar -xaf apache-ant-1.9.7-bin.tar.gz && ln -s /opt/apache-ant-1.9.7/bin/ant /usr/local/bin/ant

# Install mvn
RUN cd /opt && wget http://www-us.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz && tar -xaf apache-maven-3.3.9-bin.tar.gz && ln -s /opt/apache-maven-3.3.9/bin/mvn /usr/local/bin/mvn

# Install JCE policy file
RUN cd ~ && wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jce/7/UnlimitedJCEPolicyJDK7.zip" && unzip UnlimitedJCEPolicyJDK7.zip && cp UnlimitedJCEPolicy/*.jar $JAVA_HOME/jre/lib/security/.

RUN yum clean all

CMD ["bash"]
