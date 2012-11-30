#!/bin/sh

curl -i -X PUT -d '[
{"ServiceComponentInfo" : { "component_name": "NAMENODE"} },
{"ServiceComponentInfo" : { "component_name": "DATANODE"} }
]' http://localhost:8080/api/v1/clusters/mycluster/services/HDFS
