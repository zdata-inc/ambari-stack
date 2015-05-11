#!/bin/bash
## Provisioning script for slave machines managed by Vagrant.
cd /tmp

if [ -d /vagrant/artifacts/rpms ]; then
    rpm --replacepkgs --nosignature -i /vagrant/artifacts/rpms/ambari-agent-2.0.0-151.x86_64.rpm
else
    yum install -y ambari-agent
fi

chkconfig ambari-agent on
