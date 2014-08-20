#!/bin/sh
if [ $# -eq 0 ]; then
java -classpath /opt/schemacrawler/lib/*:. schemacrawler.tools.postgresql.Main $* -help
else
java -classpath /opt/schemacrawler/lib/*:. schemacrawler.tools.postgresql.Main $*
fi
