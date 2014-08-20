#!/bin/sh
if [ $# -eq 0 ]; then
java -classpath /opt/schemacrawler/lib/*:. schemacrawler.tools.offline.Main $* -help
else
java -classpath /opt/schemacrawler/lib/*:. schemacrawler.tools.offline.Main $*
fi
