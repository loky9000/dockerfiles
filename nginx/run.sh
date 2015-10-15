#!/bin/sh

# Preprend the upstream configuration
sed -i "s/BACKEND_SERVICE_HOST/$BACKEND_SERVICE_HOST/" /etc/nginx/sites-enabled/frontend.conf
sed -i "s/BACKEND_SERVICE_PORT/$BACKEND_SERVICE_PORT/" /etc/nginx/sites-enabled/frontend.conf
sed -i "s/SERVER_NAME/$SERVER_NAME/" /etc/nginx/sites-enabled/frontend.conf

# Start nginx
nginx -g 'daemon off;'
