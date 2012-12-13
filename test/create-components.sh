#!/bin/sh

curl -i -X POST -d '{ "components" : [
{"ServiceComponentInfo" : { "component_name": "NAMENODE"} },
{"ServiceComponentInfo" : { "component_name": "DATANODE"} }
]}' http://localhost:8080/api/v1/clusters/mycluster/services?ServiceInfo/service_name=HDFS
