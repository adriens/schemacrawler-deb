#!/bin/sh
SC_DIR=/opt/schemacrawler
java -cp $(echo $SC_DIR/lib/*.jar | tr ' ' ':'):$SC_DIR/config schemacrawler.Main "$@"