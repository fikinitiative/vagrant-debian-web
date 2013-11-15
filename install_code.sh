#!/bin/bash
# Copy clean database production dump from dropbox to ~/Sites/sql/ddbb.sql

DIR="/Users/$(whoami)/Sites/wp-fikstore/"

if [ -d "$DIR" ]; then
    true
else
    echo "Creating $DIR..."
    mkdir -p $DIR
fi

echo "Copying wp-fikstore project..."
git clone git@github.com:fikinitiative/wp-fikstore.git $DIR
cp "$DIR/wp-config.php.local" "$DIR/wp-config.php"

echo "Init submodules..."
cd $DIR
git submodule init
git submodule update

echo "Download composer..."
cd ..
curl -sS https://getcomposer.org/installer | php

echo "Composer install..."
cd $DIR
../composer.phar selfupdate
../composer.phar install

echo "Done!"
