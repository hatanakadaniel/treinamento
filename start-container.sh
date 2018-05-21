## XDEBUG
sed -i "s/xdebug\.remote_host\=.*/xdebug\.remote_host\=$XDEBUG_HOST/g" /usr/local/etc/php/conf.d/xdebug.ini

## Apache Service
service apache2 start

## Keep container live
tail -f /dev/null
