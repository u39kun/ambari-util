#!/bin/sh

cd $AMBARI_DIR
mvn clean package -DskipTests=true
