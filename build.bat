SET SYMFONY_ENV=prod
composer install
mkdir builds/logs/%BUILD_NUMBER%
phpunit --log-junit builds/logs/%BUILD_NUMBER%/phpunit.xml
