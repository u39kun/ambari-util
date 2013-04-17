#!/bin/sh

# clean up
rm -rf /var/run/ambari-agent
rm -rf /var/log/ambari-agent
rm -rf /var/lib/ambari-agent

mkdir -p /var/ambari-agent
mkdir -p /etc/ambari-agent/conf
mkdir -p /var/run/ambari-agent
mkdir -p /var/log/ambari-agent
mkdir -p /var/lib/ambari-agent/data
mkdir -p /var/lib/ambari-agent/keys
mkdir -p /tmp/HDP-artifacts

# deploy
cp -R /root/ambari/ambari-agent/src/main/puppet /var/lib/ambari-agent
cp -R /root/ambari/ambari-agent/src/main/upgrade_stack /var/lib/ambari-agent
cp /root/ambari-util/version /var/lib/ambari-agent/data
cp /root/jdk*.bin /tmp/HDP-artifacts

# prep the agent ini file 
cp /root/ambari/ambari-agent/conf/unix/ambari-agent.ini /etc/ambari-agent/conf
sed 's/hostname=.*/hostname=dev01.hortonworks.com/' /etc/ambari-agent/conf/ambari-agent.ini > /etc/ambari-agent/conf/tmp.ini; mv /etc/ambari-agent/conf/tmp.ini /etc/ambari-agent/conf/ambari-agent.ini

# start the agent
cd /root/ambari/ambari-agent/src/main/python/ambari_agent
python main.py
