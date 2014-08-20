#!/bin/sh
if [ $# -eq 0 ]; then
java -classpath /opt/schemacrawler/lib/*:. schemacrawler.tools.hsqldb.Main$* -help
else
java -classpath /opt/schemacrawler/lib/*:. schemacrawler.tools.hsqldb.Main $*
fi
