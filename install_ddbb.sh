#!/bin/bash
# Copy clean database production dump from dropbox to ~/Sites/sql/ddbb.sql

DIR="/Users/$(whoami)/Sites/sql/"
DDBB="ddbb.sql"
URL="https://dl.dropboxusercontent.com/s/k8ovlmpxc2x7lf7/wp-fikstores.latest.sql.gz"

if [ -d "$DIR" ]; then
    true
else
    echo "Creating $DIR..."
    mkdir -p $DIR
fi

echo "Downloading database..."
curl --output "$DDBB.gz" -OL# $URL
wait
gzip -d "$DDBB.gz"
mv $DDBB "$DIR/$DDBB"

echo "Done!"
