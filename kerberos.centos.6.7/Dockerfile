FROM phunt/zk-docker-devenv.centos.6.7

RUN yum clean all

RUN yum install -y \
 krb5-server krb5-libs \
 krb5-workstation

EXPOSE 88 749

ADD	./kerberos_setup.sh /root/kerberos_setup.sh

ADD	./jaas.conf /etc/zookeeper/conf/jaas.conf
ADD	./java.env /etc/zookeeper/conf/java.env

ADD	./zoo.cfg /etc/zookeeper/conf/zoo.cfg

RUN yum clean all

CMD ["bash"]
