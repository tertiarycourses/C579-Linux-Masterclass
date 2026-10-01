#!/bin/bash
# install_web.sh - deploy the NGINX web server and run a configuration test
set -e
sudo apt update
sudo apt install -y nginx
sudo service nginx start
echo '<h1>Deployed on Linux by '"$(whoami)"'</h1>' | sudo tee /var/www/html/index.html > /dev/null
echo "-- configuration test --"
sudo nginx -t
status=$(curl -s -o /dev/null -w '%{http_code}' http://localhost)
if [ "$status" = "200" ]; then
  echo "PASS: web server answered HTTP $status"
else
  echo "FAIL: web server answered HTTP $status"
  exit 1
fi
