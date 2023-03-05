#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/claversa /tmp/.auth root@192.168.1.6:/tmp/.auth
scp -i /opt/claversa ./jenkins/deploy/publish.sh root@192.168.1.6:/tmp/publish.sh
ssh -i /opt/claversa root@192.168.1.6 "/tmp/publish.sh"
