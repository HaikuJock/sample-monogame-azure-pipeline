# sample-monogame-azure-pipeline
Sample MonoGame app on Windows and Mac with Azure Pipeline YAML files demonstrating building and publishing to itch.io.

The SampleApp renders a tree sprite 512x512 on a 1280x720 window.

The Mac pipeline is at: https://dev.azure.com/jock0836/SampleMonoGameAzurePipeline/_build?definitionId=6&_a=summary

The Windows pipeline is at: https://dev.azure.com/jock0836/SampleMonoGameAzurePipeline/_build?definitionId=7&_a=summary

For the upload to itch.io to work you will need to define environment variables on the pipeline. Details are in upload-mac.sh and upload-windows.bat respectively.

Note that the Butler API key can't be set as secret so make sure your Pipeline is private.

Documentation on Azure Pipelines: https://docs.microsoft.com/en-us/azure/devops/pipelines/?toc=%2Fazure%2Fdevops%2Fpipelines%2Ftoc.json&bc=%2Fazure%2Fdevops%2Fboards%2Fpipelines%2Fbreadcrumb%2Ftoc.json&view=azure-devops
