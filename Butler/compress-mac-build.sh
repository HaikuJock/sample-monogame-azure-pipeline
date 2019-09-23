#!/bin/bash
set -e
echo "Uploading Mac build to itch.io from $AGENT_NAME"
echo "Zipping"
pushd "$1"
zip -r "${BUILD_SOURCESDIRECTORY}/Butler/SampleApp.app.zip" "SampleApp.app"
popd
