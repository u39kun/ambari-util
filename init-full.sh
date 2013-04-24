#!/bin/bash

cd /root/ambari/
pwd
git pull --rebase
cd /root/ambari-util/
pwd
./build.sh
./init-db.sh
