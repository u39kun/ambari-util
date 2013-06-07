#!/bin/sh

cd $AMBARI_DIR
mvn clean package rpm:rpm -DskipTests=true
