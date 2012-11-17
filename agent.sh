#!/bin/sh

rm -f /var/run/ambari/ambari-agent.pid
rm -rf /tmp/ambari-agent/*
rm -f /var/log/ambari/ambari-agent.log
rm -rf /var/lib/ambari-agent/puppet/modules
cp -R /root/ambari/ambari-agent/src/main/puppet/modules /var/lib/ambari-agent/puppet
cd /root/ambari/ambari-agent/src/main/python/ambari_agent
python main.py
