#!/bin/sh

curl -i -X POST -d '{"Clusters": {"version" : "HDP-1.2.0"}}' http://localhost:8080/api/v1/clusters/mycluster
