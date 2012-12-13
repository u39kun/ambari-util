#!/bin/sh

curl -i -X POST -d '{
"host_components": [
{"HostRoles" : { "component_name": "NAMENODE"} },
{"HostRoles" : { "component_name": "DATANODE"} }
]}' http://localhost:8080/api/v1/clusters/mycluster/hosts?Hosts/host_name=dev.hortonworks.com
