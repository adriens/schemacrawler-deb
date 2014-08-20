#!/bin/sh
if [ $# -eq 0 ]; then
java -classpath /opt/schemacrawler/lib/*:. schemacrawler.tools.sqlserver.Main $* -help
else
java -classpath /opt/schemacrawler/lib/*:. schemacrawler.tools.sqlserver.Main $*
fi
