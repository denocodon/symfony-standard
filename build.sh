#!/bin/sh
echo "hello" > mo.txt
export SYMFONY_ENV=prod
composer install --no-dev --optimize-autoloader
php bin/console cache:clear --env=prod --no-debug
php bin/console assets:install web_directory
php bin/console assetic:dump web_directory
#mkdir -p builds/logs
#mkdir -p builds/$BUILD_NUMBER/cloverphp
#mkdir -p builds/api

