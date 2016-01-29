SET SYMFONY_ENV=prod
php bin/console cache:clear --env=prod --no-debug
php bin/console assets:install --env=prod
composer install  --optimize-autoloader
