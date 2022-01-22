apt-get update
apt-get install -y mysql-server

# get rid of the insecure default settings
mysql_secure_installation
