#!/bin/bash

# KDC master key is "kerberos" - don't use for production! dev/test only.
/usr/sbin/kdb5_util -P kerberos create -s

/etc/rc.d/init.d/krb5kdc restart
/etc/rc.d/init.d/kadmin restart

cd /etc/zookeeper/conf

kadmin.local <<EOF
addprinc -randkey zookeeper/kerberos.example.com@EXAMPLE.COM
addprinc -randkey zookeeper-client@EXAMPLE.COM
xst -k zookeeper.keytab zookeeper/kerberos.example.com@EXAMPLE.COM
xst -k zookeeper-client.keytab zookeeper-client@EXAMPLE.COM
exit
EOF
