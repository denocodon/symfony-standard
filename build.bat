SET SYMFONY_ENV=prod
composer install
md "builds\logs\%BUILD_NUMBER%"
phpunit --log-junit "builds\logs\%BUILD_NUMBER%\phpunit.xml"
