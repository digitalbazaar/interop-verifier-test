#!/bin/bash

if [ -z "$1" ]; then
  echo "First argument must be the hostname and port (e.g. localhost:40443)"
  exit 1
fi
HOST=$1
curl -k -v -d @./mock-presentation.json -H 'Content-Type: application/json' -H 'Accept: application/json' https://"$HOST"/verifier/presentations | json_pp
