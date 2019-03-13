Schemacrawler Debian package builder
==========================================

[![Join the chat at https://gitter.im/adriens/schemacrawler-deb](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/adriens/schemacrawler-deb?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
[![Build Status](https://travis-ci.org/adriens/schemacrawler-deb.svg?branch=master)](https://travis-ci.org/adriens/schemacrawler-deb) 
[![Github Releases](https://img.shields.io/github/downloads/adriens/schemacrawler-deb/latest/total.svg?maxAge=2592000)](http://www.somsubhra.com/github-release-stats/?username=adriens&repository=schemacrawler-deb)[![Github All Releases](https://img.shields.io/github/downloads/adriens/schemacrawler-deb/total.svg?maxAge=2592000)](http://www.somsubhra.com/github-release-stats/?username=adriens&repository=schemacrawler-deb)


Set the version in session
------------------------------------------

    export SCHEMACRAWLER_VERSION=15.06.01

Download and install .deb
------------------------------------------

Go on the [Release Page](https://github.com/adriens/schemacrawler-deb/releases/latest) and get the debian file.

or download it from your shell assuming you have set version in the session :

    wget  https://github.com/adriens/schemacrawler-deb/releases/download/${SCHEMACRAWLER_VERSION}/schemacrawler-deb-${SCHEMACRAWLER_VERSION}_all.deb

Build docs and debian installer
------------------------------------------

    mvn clean package site -Ddependency.locations.enabled=false


Build all and Install
------------------------------------------

`mvn clean package site -Ddependency.locations.enabled=false && sudo dpkg -i target/schemacrawler-deb-${SCHEMACRAWLER_VERSION}_all.deb`


Build all and (re)install
------------------------------------------

`mvn clean package site -Ddependency.locations.enabled=false && sudo apt-get remove schemacrawler && sudo dpkg -i target/schemacrawler-deb-${SCHEMACRAWLER_VERSION}_all.deb`


# Debian customization : additional lints

As requested see [#68](https://github.com/adriens/schemacrawler-deb/issues/68), you can decide to directly prepare
your debian package with [additional lint](https://github.com/mbarre/schemacrawler-additional-lints) jar dropped
in `SCHEMACRAWLE_HOME/lib` so you don't have to move it afterwards.

To build such a debian package, just build with the following option :

```
mvn clean package -Dadditional-lints.target.dir=lib -Dwith-lint-flag=-with-additional-lints
```

So if you want both (with and without additional lints) debians packages, just :

```
mvn clean package && mvn package -Dadditional-lints.target.dir=lib -Dwith-lint-flag=-with-additional-lints
ls -la target/*.deb
```





Uninstall
------------------------------------------

`sudo apt-get remove schemacrawler`

# Vagrant BOX

```
vagrant up
vagrant ssh
cd /vagrant
mvn clean package
export SCHEMACRAWLER_VERSION=15.06.01
sudo dpkg -i target/schemacrawler-deb-${SCHEMACRAWLER_VERSION}_all.deb
schemacrawler -version
```

Contribute
------------------------------------------

If you are familiar with bash auto-complete files, you are welcome to provide me one 
to make schemacawler linux experience even better.


