SET SYMFONY_ENV=prod
composer install
echo "MOA"
md "builds\logs\%BUILD_NUMBER%"
echo "MOA1"
phpunit --log-junit "builds\logs\%BUILD_NUMBER%\phpunit.xml"
