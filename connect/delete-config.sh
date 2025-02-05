#!/bin/bash

KAFKA_CONNECT_ADDRESS=${1:-localhost}
KAFKA_CONNECT_PORT=${2:-8083}
BASE_CONFIG=${3:-"$(dirname $0)/elastic-sink-corporates-cleaned.json"}
KAFKA_CONNECT_API="$KAFKA_CONNECT_ADDRESS:$KAFKA_CONNECT_PORT/connectors"

CONNECTOR_NAME=$(jq -r .name $BASE_CONFIG)
curl -Is -X DELETE $KAFKA_CONNECT_API/$CONNECTOR_NAME
