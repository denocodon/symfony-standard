#!/bin/sh
composer install --no-dev --optimize-autoloader
php bin/console cache:clear --env=prod --no-debug
php bin/console assets:install --env=prod
#php bin/console assets:install web_directory
#php bin/console assetic:dump web_directory
mkdir -p builds/logs
export SYMFONY_ENV=prod
phpunit --coverage-clover ./builds/logs/clover.xml
#mkdir -p builds/$BUILD_NUMBER/cloverphp
#mkdir -p builds/api

