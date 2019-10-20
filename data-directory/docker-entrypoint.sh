#!/bin/bash
catalina.sh run
sleep 25
cp /srv/ipt/ojdbc8.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/ojdbc8.jar
rm /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/ojdbc-14.jar
touch /usr/local/tomcat/webapps/ROOT/WEB-INF/web.xml
exec "$@"
