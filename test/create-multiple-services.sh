#!/bin/sh

curl -i -X POST -d '{
"Clusters": {"version" : "HDP-1.2.0"},
"services":[
{"ServiceInfo" : { "service_name": "HDFS"} },
{"ServiceInfo" : { "service_name": "MAPREDUCE"} }
]
}' http://localhost:8080/api/v1/clusters/mycluster
