#!/bin/bash
mkdir -p /home/site/wwwroot/storage/framework/views
mkdir -p /home/site/wwwroot/bootstrap/cache
chmod -R 777 /home/site/wwwroot/storage
chmod -R 777 /home/site/wwwroot/bootstrap/cache
php /home/site/wwwroot/artisan cache:clear
php /home/site/wwwroot/artisan config:clear
php /home/site/wwwroot/artisan config:cache
php /home/site/wwwroot/artisan route:clear
php /home/site/wwwroot/artisan view:clear
cp /home/site/wwwroot/default /etc/nginx/sites-available/default && service nginx reload
