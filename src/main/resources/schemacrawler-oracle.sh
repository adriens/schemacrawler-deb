#!/bin/sh
if [ $# -eq 0 ]; then
java -classpath /opt/schemacrawler/lib/*:. schemacrawler.tools.oracle.Main $* -help
else
java -classpath /opt/schemacrawler/lib/*:. schemacrawler.tools.oracle.Main $*
fi
