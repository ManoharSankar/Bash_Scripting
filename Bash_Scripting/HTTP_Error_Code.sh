#!/bin/bash

# URL to check
URL="https://www.guvi.in"

# Get the HTTP status code
HTTP_STATUS=$(curl -o /dev/null -s -w "%{http_code}\n" $URL)

# Print the HTTP status code
echo "HTTP Status Code: $HTTP_STATUS"

# Determine success or failure
if [ "$HTTP_STATUS" -eq 200 ]; then
  echo "Success: The website is reachable."
else
  echo "Failure: The website returned an error."
fi
