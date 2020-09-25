#!/bin/bash

# Initialize NGINX, MySQL and PHP-FPM
service nginx start
service mysql start
service php7.3-fpm start

echo "Services activated!"

# Start container's shell
bash

# Run container for undetermined time
tail -f /dev/null
