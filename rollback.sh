#!/bin/bash
ENV=$1
echo "Rolling back $ENV environment..."

if [ "$ENV" == "blue" ]; then
    git checkout blue
    cp -r ./blue/* /var/www/html/
    echo "Rolled back to blue environment."
elif [ "$ENV" == "green" ]; then
    git checkout green
    cp -r ./green/* /var/www/html/
    echo "Rolled back to green environment."
else
    echo "Invalid environment. Please choose 'blue' or 'green'."
fi