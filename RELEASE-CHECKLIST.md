Schemacrawler Debian Release Check List
==========================================

Steps to follow to publish a new debian version
------------------------------------------

1. [Download](http://sourceforge.net/projects/schemacrawler/) the latest official distribution
2. Update the pom.version to the target schemacrawler version, then commit (locally)
3. Check in the lib directory if there are any required dependency update (pom.xml vs jars in the zip distribution) : if there are some, upgrade dependencies, then commit (locally)
4. Update [README.md](README.md) : in the export section, update with the good version, then commit (locally)
5. Update changes.xml : add a new section, with the good version, then commit (locally)
6. build (mvn clean package)
7. test install :
⋅⋅1. Remove previous install
⋅⋅2. Install the newly built version
⋅⋅3. Test install
8. Push commit in the upstream
9. Create tag (tag name is the schemacrawler version name)
10. Push to the newly created tag
11. Push to [bintray](https://bintray.com/adriens/deb/schemacrawler/)
