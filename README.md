# sample-monogame-azure-pipeline
Sample MonoGame app on Windows and Mac with Azure Pipeline YAML files demonstrating building and publishing to itch.io

Work in Progress. Mac build and pipeline is working. Will update Windows when I am back at a Windows machine.

The Mac pipeline is available at: https://dev.azure.com/jock0836/SampleMonoGameAzurePipeline/_build?definitionId=6&_a=summary

For the upload to itch.io to work you will need to define environment variables on the pipeline. Details are in upload-mac.sh and upload-windows.bat respectively.

Note that the Butler API key can't be set as secret so make sure your Pipeline is private.
