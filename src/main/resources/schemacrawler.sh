#!/bin/sh
if [ $# -eq 0 ]; then
java -classpath /opt/schemacrawler/lib/*:. schemacrawler.tools.generic.Main -help
else
java -classpath /opt/schemacrawler/lib/*:. schemacrawler.tools.generic.Main $*
fi
