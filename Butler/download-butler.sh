#!/bin/bash
set -e
echo "Downloading Butler to $AGENT_NAME"
curl -L -o butler.zip https://broth.itch.ovh/butler/darwin-amd64/LATEST/archive/default
echo "Unzipping Butler"
unzip butler.zip
# GNU unzip tends to not set the executable bit even though it's set in the .zip
echo "Making Butler executable"
chmod +x butler
