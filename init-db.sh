#!/bin/sh

service postgresql stop
rm -rf /var/lib/pgsql/data
sudo -u postgres initdb /var/lib/pgsql/data
cp -f pg_hba.conf /var/lib/pgsql/data
cp -f postgresql.conf /var/lib/pgsql/data
sleep 5
service postgresql start
#sudo -u postgres psql -U postgres < $AMBARI_DIR/ambari-server/src/main/resources/Ambari-DDL-Postgres-CREATE.sql
cp -f $AMBARI_DIR/ambari-server/src/main/resources/Ambari-DDL-Postgres-CREATE.sql /tmp
sleep 5
sudo -u postgres psql -U postgres -f /tmp/Ambari-DDL-Postgres-CREATE.sql -v username="\"ambari-server\"" -v password="'bigdata'"
