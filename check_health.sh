#!/bin/bash
URL=$1
RESPONSE=$(curl -s -o /dev/null -w "%{http_code}" $URL)
if [ "$RESPONSE" -eq 200 ]; then
    echo "Environment is healthy."
else
    echo "Environment is unhealthy."
fi
