Schemacrawler Debian package builder
==========================================

Set version in session
------------------------------------------

`export SCHEMACRAWLER_VERSION=$(mvn org.apache.maven.plugins:maven-help-plugin:2.1.1:evaluate -Dexpression=project.version | egrep -v '^\[|Downloading:' | tr -d ' \n')`

Pre-requisiste
------------------------------------------

**DO NOT SKIP THIS STEP !**

To get the proper non-bugged jdbc sqlite driver (3.7.8) and to be able to successfully run the build, **you have to
run** the following command :

    mvn install:install-file -DgroupId=org.xerial -DartifactId=sqlite-jdbc -Dversion=3.7.8 -Dfile=lib/sqlite-jdbc-3.7.8.jar -Dpackaging=jar -DgeneratePom=true

Build docs and debian installer
------------------------------------------

    mvn clean package site -Ddependency.locations.enabled=false


Build all and Install
------------------------------------------

`mvn clean package site -Ddependency.locations.enabled=false && sudo dpkg -i target/schemacrawler-deb_${SCHEMACRAWLER_VERSION}_all.deb`


Build all and (re)install
------------------------------------------

`mvn clean package site -Ddependency.locations.enabled=false && sudo apt-get remove schemacrawler && sudo dpkg -i target/schemacrawler-deb_${SCHEMACRAWLER_VERSION}_all.deb`


Uninstall
------------------------------------------

`sudo apt-get remove schemacrawler`


