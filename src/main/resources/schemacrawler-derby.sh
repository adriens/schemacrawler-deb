#!/bin/sh
if [ $# -eq 0 ]; then
java -classpath /opt/schemacrawler/lib/*:. schemacrawler.tools.derby.Main $* -help
else
java -classpath /opt/schemacrawler/lib/*:. schemacrawler.tools.derby.Main $*
fi
