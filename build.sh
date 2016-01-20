#!/bin/sh
echo "hello" > mo.txt
export SYMFONY_ENV=prod
composer install --no-dev --optimize-autoloader
