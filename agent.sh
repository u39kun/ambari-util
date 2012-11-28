#!/bin/sh

mkdir -p /var/run/ambari-agent
mkdir -p /var/log/ambari-agent
mkdir -p /tmp/ambari-agent
rm -f /var/run/ambari-agent/ambari-agent.pid
rm -rf /tmp/ambari-agent/*
rm -f /var/log/ambari-agent/ambari-agent.log
rm -rf /var/lib/ambari-agent/puppet/modules
cp -R /root/ambari/ambari-agent/src/main/puppet/modules /var/lib/ambari-agent/puppet
cd /root/ambari/ambari-agent/src/main/python/ambari_agent
python main.py
