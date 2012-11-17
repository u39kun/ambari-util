#!/bin/sh

rm -rf $AMBARI_DIR/ambari-server/target/ambari-server*SNAPSHOT
cd $AMBARI_DIR/ambari-server/target
tar zxvf $AMBARI_DIR/ambari-server/target/ambari-server*.tar.gz
cd $AMBARI_DIR/ambari-server/target/ambari-server*SNAPSHOT
cp $AMBARI_UTIL_DIR/ambari.properties etc/ambari-server/conf
cp $AMBARI_UTIL_DIR/log4j.properties etc/ambari-server/conf
rm -rf web
ln -s $AMBARI_DIR/ambari-web/public web
# comment out the line above and modify/uncomment the line below to 
# allow ambari-web development directly from the host
# ln -s /host/ambari-web/public web
java -cp etc/ambari-server/conf/:lib/ambari-server/* org.apache.ambari.server.controller.AmbariServer 
