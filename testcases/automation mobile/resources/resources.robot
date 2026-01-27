*** Settings ***
Library     AppiumLibrary
Resource    ../POM/variables_login.robot
Resource    ../POM/variables_hazard.robot


*** Keywords ***
Open Application WeMine
    Open Application
    ...    ${APPIUM_SERVER}
    ...    platformName=${PLATFORM}
    ...    deviceName=${DEVICE_NAME}
    ...    app=${APP_PATH}
    ...    automationName=${AUTOMATION_NAME}
