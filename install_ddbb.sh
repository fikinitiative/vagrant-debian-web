#!/bin/bash
# Copy clean database production dump from dropbox to ~/Sites/sql/ddbb.sql

DIR="/Users/$(whoami)/Sites/sql/"
DDBB="ddbb.sql"

if [ -d "$DIR" ]; then
    true
else
    echo "Creating $DIR..."
    mkdir -p $DIR
fi

echo "Copying database..."
curl --output "$DDBB.gz" -O# https://dl.dropboxusercontent.com/s/gdvm4dzi43t174b/test_cleanup2_2013-11-05.sql.gz?dl=1&token_hash=AAH6cYbAHGSEYNhlwQqog4bqZFisfwu_QhsYSZdzpbeXEQ 
wait
gzip -d "$DDBB.gz"
mv $DDBB "$DIR/$DDBB"

echo "Done!"
