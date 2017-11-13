# The output of all these installation steps is noisy. With this utility
# the progress report is nice and concise.
function install {
    echo installing $1
    shift
    apt-get -y install "$@" >/dev/null 2>&1
}

echo "ubuntu:ubuntu" | sudo chpasswd

echo 'adding swap file'
fallocate -l 2G /swapfile
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile
echo '/swapfile none swap defaults 0 0' >> /etc/fstab

echo 'updating package information'
apt-get -y update >/dev/null 2>&1

install 'development tools' build-essential
install 'Git' git
install 'memcached' memcached
install 'PostgreSQL' postgresql postgresql-contrib libpq-dev
install 'Nokogiri dependencies' libxml2 libxml2-dev libxslt1-dev
install 'ExecJS runtime' nodejs
install 'ImageMagick' imagemagick

# Specify locale
update-locale LANG=en_US.UTF-8 LANGUAGE=en_US.UTF-8 LC_ALL=en_US.UTF-8
