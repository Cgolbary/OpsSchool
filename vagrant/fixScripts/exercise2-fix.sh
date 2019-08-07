#!/bin/bash
#add fix to exercise2 here
#The file was blocked by the host file.
#In order to make it work you need to delete this line from the host file.
#127.0.0.1 www.ascii-art.de



sudo sed -i 's/127.0.0.1 www.ascii-art.de//g' /etc/hosts

