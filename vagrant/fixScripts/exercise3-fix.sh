#!/bin/bash
#add fix to exercise3 here
#What did you get?- Forbidden
#You don't have permission to access / on this server.Apache/2.2.22 (Ubuntu) Server at 192.168.100.10 Port 80

  sudo mkdir -p /var/www/192.168.100.10/public_html
  sudo chown -R $USER:$USER /var/www/192.168.100.10/public_html
  sudo chmod -R 755 /var/www
  cp /var/www/index.html /var/www/192.168.100.10/public_html/index.html
  

#  add this block
 echo "<VirtualHost *:80>
    ServerAdmin webmaster@localhost
    ServerName  192.168.100.10
    DocumentRoot /var/www/192.168.100.10/public_html
    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>" >> /etc/apache2/sites-available/192.168.100.10.conf 

  
sudo a2ensite 192.168.100.10.conf
sudo service apache2 restart
