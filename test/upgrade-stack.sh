#!/bin/sh

curl -u admin:admin -i -X PUT -d '{
"Clusters": { "version": "HDP-1.2.2" }
}' http://localhost:8080/api/v1/clusters/$1
