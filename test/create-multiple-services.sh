#!/bin/sh

curl -i -X POST -d '[
{"ServiceInfo" : { "service_name": "HDFS"} },
{"ServiceInfo" : { "service_name": "MAPREDUCE"} }
]' http://localhost:8080/api/v1/clusters/mycluster/services
