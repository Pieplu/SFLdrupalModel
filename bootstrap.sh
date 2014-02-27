
sudo apt-get update -y

sudo apt-get install apache2 mysql-server php5 php5-curl php5-gd php5-mysql php5-mcrypt php5-xdebug phpmyadmin php-pear -y

sudo a2enmod rewrite 

sudo apt-get install git -y

pear channel-discover pear.drush.org

pear install drush/drush-6.2.0.0 