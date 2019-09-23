@echo off
echo Uploading Windows build to itch.io from %AGENT_NAME%.

if "%BUTLERAPIKEY%"=="" (
    echo You need to set ButlerApiKey in your Azure Pipeline Build Variables
    exit /B 1
)
if "%ITCHCREATORNAME%"=="" (
    echo You need to set ItchCreatorName in your Azure Pipeline Build Variables or just set it in this file
    exit /B 1
)
if "%ITCHAPPNAME%"=="" (
    echo You need to set ItchAppName in your Azure Pipeline Build Variables or just set it in this file
    exit /B 1
)
if "%ITCHCHANNELNAME%"=="" (
    echo You need to set ItchChannelName in your Azure Pipeline Build Variables or just set it in this file
    exit /B 1
)

echo Copying zip from %1\a.zip to %1\SampleApp.zip
copy /Y %1\a.zip %1\SampleApp.zip
set BUTLER_API_KEY=%BUTLERAPIKEY%

REM To actually upload comment out this section...

echo Dry run, not pushing, would have executed:
echo %BUILD_SOURCESDIRECTORY%\Butler\butler push %1\SampleApp.zip %ITCHCREATORNAME%/%ITCHAPPNAME%:%ITCHCHANNELNAME%

REM ... and uncomment this section

REM echo Running butler push at %BUILD_SOURCESDIRECTORY%\Butler\
REM %BUILD_SOURCESDIRECTORY%\Butler\butler push %1\SampleApp.zip %ITCHCREATORNAME%/%ITCHAPPNAME%:%ITCHCHANNELNAME%
