*** Settings ***
Library     Browser
Resource    Variables.robot
Library     RequestsLibrary
Resource    ../keywords/login.robot
Library     appiumlibrary


*** Keywords ***
Open Web WeMineOffice
    New Browser    headless=False
    New Context
    New Page    ${BASE_URL}

Login To WeMineOffice
    [Arguments]    ${username}    ${password}
    Fill Text    input[name="username"]    ${username}
    Click    //*[name="next"]
    Microsoft Enter Password    ${password}
