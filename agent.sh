#!/bin/sh

mkdir -p /var/run/ambari-agent
mkdir -p /var/log/ambari-agent
mkdir -p /tmp/ambari-agent
rm -f /var/run/ambari-agent/ambari-agent.pid
rm -rf /tmp/ambari-agent/*
rm -f /var/log/ambari-agent/ambari-agent.log
rm -rf /var/lib/ambari-agent/puppet/modules
rm -rf /var/lib/ambari-agent/upgrade_stack
cp -R /root/ambari/ambari-agent/src/main/puppet/modules /var/lib/ambari-agent/puppet
cp -R /root/ambari/ambari-agent/src/main/upgrade_stack /var/lib/ambari-agent
cp /root/ambari-util/version /tmp/ambari-agent

# hack to enable upgrade testing until HDP 1.3 repo is ready 
mv /var/lib/ambari-agent/upgrade_stack/HDP-1.2_HDP-1.3 /var/lib/ambari-agent/upgrade_stack/HDP-1.2_HDP-1.2

# start the agent
cd /root/ambari/ambari-agent/src/main/python/ambari_agent
python main.py
