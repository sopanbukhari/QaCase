*** Settings ***
Resource    ../keywords/login.robot
Suite Setup     Open Web WeMineOffice
Suite Teardown  Close Browser
*** Test Cases ***
Login Full Flow – WHO → Microsoft Login → Master Data → Restart
    # UI: Input username
    Input Username    ${VALID_USER}
    # API: Validate WHO request
    ${who_data}=    Send WHO Request
    # UI: Microsoft password input
    Microsoft Enter Password    ${VALID_PASS}
    # API: Validate /user/me
    Send ME Request
    # API: Validate /tenant/master
    Send Master Data Request
    # UI: Wait master data download
    Wait For Progress Completion
    # UI: App prompts restart
    Restart App