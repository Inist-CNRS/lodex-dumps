#!/bin/bash

cd /app

echo "Loading environnment variables..."
/app/config2vars > /app/config.env
chmod 755 /app/config.env
source /app/config.env

echo "Downloading data..."
/app/downloadData

echo "Starting server..."
exec npx serve data
