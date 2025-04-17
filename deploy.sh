#!/bin/bash

ENV=$1
echo "Deploying $ENV environment..."

if [ "$ENV" == "blue" ]; then
    git checkout blue
    cp -r ./blue/* /var/www/html/
    echo "Blue environment deployed."
elif [ "$ENV" == "green" ]; then
    git checkout green
    cp -r ./green/* /var/www/html/
    echo "Green environment deployed."
else
    echo "Invalid environment. Please choose 'blue' or 'green'."
fi
