*** Settings ***
Resource   ../keywords/login.robot
Suite Setup    Open Application WeMine
Suite Teardown    Close Application Session


*** Test Cases ***
Login Full Flow – WHO → Microsoft Login → Master Data → Restart
    Input Username On Login Screen
    Tap Next Button
    Perform Microsoft Login
    Wait For Master Data Download
    Confirm Restart Prompt
    Verify App Restart Successfully
