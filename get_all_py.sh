# install dependencies
apt-get install build-essential checkinstall
apt-get install libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev

# install python versions
for version in `cat versions.txt`; do
    echo "Python $version"
    cd /usr/src
    sudo wget "https://www.python.org/ftp/python/$version/Python-$version.tgz"
    sudo tar xzf "Python-$version.tgz"
    cd "Python-$version"
    sudo ./configure
    sudo make altinstall
done
