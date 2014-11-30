#!/bin/sh
if [ $# -eq 0 ]; then
java -cp $(echo /opt/schemacrawler/lib/*.jar | tr ' ' ':') schemacrawler.Main $*
else
java -cp $(echo /opt/schemacrawler/lib/*.jar | tr ' ' ':') schemacrawler.Main $*
fi
