#!/bin/sh
echo "hello" > mo.txt
composer install --no-dev --optimize-autoloader
