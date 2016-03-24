# Kerberos on centos 6.7

Simple environment setup with Centos 6.7 as the base that supports Kerberos. By default kerberos logs are in /var/log.

THIS IS NOT MEANT FOR PRODUCTION ENVIRONMENTS - this is for dev and testing only. Do not use this for anything that needs to be secure - note the default master key is "kerberos".


## Recommended way to run the docker image:

docker run -it --name kerberos -h kerberos.example.com -v /dev/urandom:/dev/random -v /Users/$USER/dev/zookeeper-br34:/root/zookeeper phunt/zk-docker-devenv.kerberos.centos.6.7 bash

Notice:
* Using urandom to get around entroy issues.
* I'm mounting my branch-3.4 working directory into the container

Once you get the bash prompt run ~/kerberos_setup.sh

Use the /etc/zookeeper/conf configuration files inside the container if you want to use kerberos config. Similar for the client - use the jaas.conf from that location. Also copy the java.env into your zookeeper configuration directory.

Start the server:

bin/zkServer.sh start

Start the client:

bin/zkCli.sh -server kerberos.example.com:2181
