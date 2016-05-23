Schemacrawler Debian package builder
==========================================

[![Join the chat at https://gitter.im/adriens/schemacrawler-deb](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/adriens/schemacrawler-deb?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
[![Build Status](https://travis-ci.org/adriens/schemacrawler-deb.svg?branch=master)](https://travis-ci.org/adriens/schemacrawler-deb) [![Dependency Status](https://www.versioneye.com/user/projects/56b687660a0ff5002c860389/badge.svg?style=flat)](https://www.versioneye.com/user/projects/56b687660a0ff5002c860389)

[![Github Releases](https://img.shields.io/github/downloads/adriens/schemacrawler-deb/latest/total.svg?maxAge=2592000)](http://www.somsubhra.com/github-release-stats/?username=adriens&repository=schemacrawler-deb)[![Github All Releases](https://img.shields.io/github/downloads/adriens/schemacrawler-deb/total.svg?maxAge=2592000)](http://www.somsubhra.com/github-release-stats/?username=adriens&repository=schemacrawler-deb)

Set the version in session
------------------------------------------

    export SCHEMACRAWLER_VERSION=14.08.03

Download and install .deb
------------------------------------------

Go on the [Release Page](https://github.com/adriens/schemacrawler-deb/releases/latest) and get the debian file.

or download it from your shell assuming you have set version in the session :

    wget  https://github.com/adriens/schemacrawler-deb/releases/download/${SCHEMACRAWLER_VERSION}/schemacrawler-deb_${SCHEMACRAWLER_VERSION}_all.deb

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


