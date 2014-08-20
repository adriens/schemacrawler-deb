#!/bin/sh
if [ $# -eq 0 ]; then
java -classpath /opt/schemacrawler/lib/*:. schemacrawler.tools.sybaseiq.Main $* -help
else
java -classpath /opt/schemacrawler/lib/*:. schemacrawler.tools.sybaseiq.Main $*
fi
