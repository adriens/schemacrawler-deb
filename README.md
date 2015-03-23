Schemacrawler Debian package builder
==========================================

Set version in session
------------------------------------------

    export SCHEMACRAWLER_VERSION=12.05.02

Download and install .deb
------------------------------------------

    wget https://bintray.com/artifact/download/adriens/deb/pool/main/s/schemacrawler/schemacrawler-deb_${SCHEMACRAWLER_VERSION}_all.deb
    sudo dpkg -i schemacrawler-deb_${SCHEMACRAWLER_VERSION}_all.deb

Pre-requisite to build the .deb yourself
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

Contribute
------------------------------------------

If you are familiar with bash auto-complete files, you are welcome to provide me one 
to make schemacawler linux experience even better.


