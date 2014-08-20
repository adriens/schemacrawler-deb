#!/bin/sh
if [ $# -eq 0 ]; then
java -classpath /opt/schemacrawler/lib/*:. schemacrawler.tools.mysql.Main $* -help
else
java -classpath /opt/schemacrawler/lib/*:. schemacrawler.tools.mysql.Main $*
fi
