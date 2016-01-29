SET SYMFONY_ENV=prod
SET
composer install
mkdir -p builds/logs/$BUILD_NUMBER
phpunit --log-junit builds/logs/$BUILD_NUMBER/phpunit.xml
