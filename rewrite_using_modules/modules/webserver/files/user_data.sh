#!/bin/bash
yum update -y
yum upgrade -y
yum install -y httpd

echo "<h1><center>Welcome to tricky-beast<?center></h1>" > /var/www/html/index.html