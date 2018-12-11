echo "###########################################################"
echo "#                                                         #"
echo "# Install schemacrawler Shell from scratch on your        #"
echo "# home  directory                                         #"
echo "#                                                         #"
echo "###########################################################"

# For now, hard code schemacrawler version
export SC_VERSION=15.01.06

cd ~ 
mkdir ~/schemacrawler-shell-${SC_VERSION}
cd ~/schemacrawler-shell-${SC_VERSION}

echo "Getting schemawrawler-shell binaries ..."
wget https://github.com/schemacrawler/SchemaCrawler/releases/download/v${SC_VERSION}/schemacrawler-${SC_VERSION}-distribution.zip
echo "Comuting md5 :"
md5sum schemacrawler-${SC_VERSION}-distribution.zip
echo "Unzipping Schemacrawler Shell resources ..."
unzip schemacrawler-${SC_VERSION}-distribution.zip
rm schemacrawler-${SC_VERSION}-distribution.zip
cd schemacrawler-${SC_VERSION}-distribution

echo "Install shell ..."
cd _downloader
./download.sh shell

cd ..
cp examples/shell/schemacrawler-shell.sh ./_schemacrawler/
cd _schemacrawler
./schemacrawler-shell.sh