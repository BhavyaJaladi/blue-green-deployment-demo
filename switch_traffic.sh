#!/bin/bash

ENV=$1
if [ "$ENV" == "blue" ]; then
    ln -sfn ./blue/index.html ~/deployment/html/index.html
    echo "Switched traffic to the blue environment."
elif [ "$ENV" == "green" ]; then
    ln -sfn ./green/index.html ~/deployment/html/index.html
    echo "Switched traffic to the green environment."
else
    echo "Invalid environment. Please choose 'blue' or 'green'."
fi
