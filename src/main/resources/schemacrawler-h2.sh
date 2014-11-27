#!/bin/sh
if [ $# -eq 0 ]; then
java -classpath /opt/schemacrawler/lib/*:. schemacrawler.tools.h2.Main $* -help
else
java -classpath /opt/schemacrawler/lib/*:. schemacrawler.tools.h2.Main $*
fi
