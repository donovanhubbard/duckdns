#!/bin/bash
#Updates duckdns.org with the current public IP address
# Environment Variables:
#   TOKEN: your duck dns token
#   INTERVAL_SECONDS: how long to pause in between updates. Default is 5 minutes

DEFAULT_INTERVAL_SECONDS=300

if [ -z "$TOKEN" ]; then
  echo "Mandatory environment variable TOKEN not set. Exiting."
  exit 1
fi

if [ -z "$INTERVAL_SECONDS" ]; then
  INTERVAL_SECONDS=$DEFAULT_INTERVAL_SECONDS
fi


while true
do
  echo -n `date`:
  curl --silent "https://www.duckdns.org/update?domains=svenxix&token=$TOKEN&ip="
  echo ""
  sleep $INTERVAL_SECONDS
done

