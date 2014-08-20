#!/bin/sh
if [ $# -eq 0 ]; then
java -classpath /opt/schemacrawler/lib/*:. schemacrawler.tools.db2.Main $* -help
else
java -classpath /opt/schemacrawler/lib/*:. schemacrawler.tools.db2.Main $*
fi
