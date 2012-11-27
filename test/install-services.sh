#!/bin/sh

curl -i -X PUT -d '{"ServiceInfo": {"state": "INSTALLED" } }' http://localhost:8080/api/v1/clusters/mycluster/services?ServiceInfo/state=INIT
                                             
