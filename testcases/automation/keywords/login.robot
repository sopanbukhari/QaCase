*** Settings ***
Resource    ../resources/resources.robot
Resource    login_api.robot
*** Keywords ***
Input Username
    [Arguments]    ${username}
    Fill Text    input[name="username"]    ${username}

Click Next
    Click    button:has-text("Next")

Microsoft Enter Password
    [Arguments]    ${password}
    Wait For Elements State    input[type="password"]    visible    timeout=10s
    Fill Text    input[type="password"]    ${password}
    Click    input[type="submit"]

Wait For Progress Completion
    Wait For Elements State    text=Updating master data    visible    timeout=5s
    # wait until progress bar disappears
    Wait For Elements State    .progress-bar    hidden    timeout=60s

Restart App
    Click    button:has-text("Restart")