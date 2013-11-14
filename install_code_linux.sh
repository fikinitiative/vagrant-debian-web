#!/bin/bash
# Copy clean database production dump from dropbox to ~/Sites/sql/ddbb.sql

DIR="/home/$(whoami)/Sites/wp-fikstore/"

if [ -d "$DIR" ]; then
    true
else
    echo "Creating $DIR..."
    mkdir -p $DIR
fi

echo "Copying wp-fikstore project..."
git clone git@github.com:fikinitiative/wp-fikstore.git $DIR
cp "$DIR/wp-config.php.local" "$DIR/wp-config.php"

echo "Done!"
