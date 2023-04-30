#!/bin/bash

question=$1

payload_json=$(echo '{}' | jq --arg p "$question" '. + {parameters:{question: $p}}')

echo $payload_json

curl -X 'POST' \
  'http://localhost:4200/api/deployments/23d3ad23-ab1b-4a35-afaf-69e484e8f1e6/create_flow_run' \
  -H 'accept: application/json' \
  -H 'Content-Type: application/json' \
  -d "$payload_json"
