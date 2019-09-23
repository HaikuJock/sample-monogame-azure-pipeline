#!/bin/bash
set -e
if [ -z "$BUTLERAPIKEY" ]; then 
    echo "You need to set ButlerApiKey in your Azure Pipeline Build Variables"
    exit 1
fi
if [ -z "$ITCHCREATORNAME" ]; then 
    echo "You need to set ItchCreatorName in your Azure Pipeline Build Variables or just set it in this file"
    exit 1
fi
if [ -z "$ITCHAPPNAME" ]; then 
    echo "You need to set ItchAppName in your Azure Pipeline Build Variables or just set it in this file"
    exit 1
fi
if [ -z "$ITCHCHANNELNAME" ]; then 
    echo "You need to set ItchChannelName in your Azure Pipeline Build Variables or just set it in this file"
    exit 1
fi

echo "Uploading Mac build to itch.io from $AGENT_NAME"
BUTLER_DIRECTORY="${BUILD_SOURCESDIRECTORY}/Butler"

export BUTLER_API_KEY=$BUTLERAPIKEY

# To actually upload comment out this section...

echo "Dry run, not pushing, would have executed:"
echo "${BUTLER_DIRECTORY}/butler push ${BUTLER_DIRECTORY}/SampleApp.app.zip ${ITCHCREATORNAME}/${ITCHAPPNAME}:${ITCHCHANNELNAME}"

# ... and uncomment this section

# echo "Running butler push at ${BUTLER_DIRECTORY}"
# "${BUTLER_DIRECTORY}/butler" push "${BUTLER_DIRECTORY}/SampleApp.app.zip" ${ITCHCREATORNAME}/${ITCHAPPNAME}:${ITCHCHANNELNAME}
