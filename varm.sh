#!/bin/bash

# varm script - executes varm_boot command with pfid
# Usage: varm <pfid>
# Example: varm 0021-03-02-25

if [ $# -eq 0 ]; then
    echo "Usage: varm <pfid>"
    echo "Example: varm 0021-03-02-25"
    exit 1
fi

PFID="$1"

echo "Executing varm_boot with pfid: $PFID"
curl_device_manager.sh -X POST "https://powerflex.io/edge-device-manager/webastoCommands/varm_boot/$PFID" --header 'Content-Type: application/json' | jq

