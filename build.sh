#!/bin/sh
echo "hello" > mo.txt
export SYMFONY_ENV=prod
composer install --no-dev --optimize-autoloader
mkdir -p builds/logs
mkdir -p builds/api
