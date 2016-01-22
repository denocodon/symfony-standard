#!/bin/sh
export SYMFONY_ENV=prod
composer install  --optimize-autoloader
php bin/console cache:clear --env=prod --no-debug
php bin/console assets:install --env=prod
#php bin/console assets:install web_directory
#php bin/console assetic:dump web_directory
mkdir -p builds/logs
#phpcs --report-xml=builds/logs/checkstyle.xml .
phpcs --report=checkstyle --report-file=builds/logs/phpcs.xml
#phpunit --coverage-clover ./builds/logs/clover.xml
phpunit --log-junit builds/logs/phpunit.xml
#phpmd . xml codesize,unusedcode,naming,design --reportfile builds/logs/phppmd.xml --exclude Vendor,Config,Console,uploads,tmp,Test
#phploc . --log-xml=builds/logs/phploc.xml
#phploc . --log-csv=builds/logs/phploc.csv
#mkdir -p builds/$BUILD_NUMBER/cloverphp
#mkdir -p builds/api

