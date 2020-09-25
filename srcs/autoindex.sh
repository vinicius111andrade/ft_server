#!/bin/bash

# This script turns autoindex on or off according to argument $1
#   $1 is the first argument passed to the script when calling it, $0 is the name of the script file, $2 is the second arg

INDEX=$1
NGINX_CONF=/etc/nginx/sites-available/nginx.conf

if [[ "$INDEX" == "on" || "$INDEX" == "off" ]];
then
	sed -i -E "/autoindex/ s/on|off/$INDEX/" $NGINX_CONF
	nginx -s reload
	echo "Autoindex option is now set to $INDEX"
else
	echo "Please provide a valid value ('on' or 'off') for autoindex, ex: ./autoindex.sh on"
fi

# fi closes if statement
