Schemacrawler Debian package buidler
==========================================

Set version in session
------------------------------------------

`export SCHEMACRAWLER_VERSION=$(mvn org.apache.maven.plugins:maven-help-plugin:2.1.1:evaluate -Dexpression=project.version | egrep -v '^\[|Downloading:' | tr -d ' \n')`

Build docs and debian installer
------------------------------------------

`mvn clean site package`


Build all and Install
------------------------------------------

`mvn clean site  install && sudo dpkg -i target/schemacrawler-deb_${SCHEMACRAWLER_VERSION}_all.deb`


Build all and (re)install
------------------------------------------

`mvn clean site  install && sudo apt-get remove schemacrawler && sudo dpkg -i target/schemacrawler-deb_${SCHEMACRAWLER_VERSION}_all.deb`


Uninstall
------------------------------------------

`sudo apt-get remove schemacrawler


