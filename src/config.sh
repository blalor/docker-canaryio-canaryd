#!/bin/bash

set -e -x -u

cd /tmp/src

mv program-canaryio-canaryd.conf /etc/supervisor.d/
mv program-nginx.conf /etc/supervisor.d/

mv nginx.repo /etc/yum.repos.d/
yum install -y canaryio-canaryd nginx

mv nginx.conf /etc/nginx/


## cleanup
cd /
yum clean all
rm -rf /var/tmp/yum-root* /tmp/src
