#!/bin/sh

curl -i -X PUT -d '{"HostRoles": {"state": "INSTALLED" } }' 'http://localhost:8080/api/v1/clusters/mycluster/host_components?HostRoles/host_name=dev.hortonworks.com&HostRoles/component_name=DATANODE&HostRoles/state=INIT'
                                             
