#!/bin/sh

curl -i -X POST -d '[
{"Hosts" : { "host_name": "dev.hortonworks.com"} }
]' http://localhost:8080/api/v1/clusters/mycluster/hosts
