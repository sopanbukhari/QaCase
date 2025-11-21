*** Settings ***
Resource    ../resources/resources.robot

*** Keywords ***
Send WHO Request
    Create Session    who    ${API_WHO}
    ${resp}=    GET    who
    Should Be Equal As Integers    ${resp.status_code}    200
    Log    ${resp.json()}
    [Return]    ${resp.json()}

Send ME Request
    Create Session    me    ${API_ME}
    ${resp}=    GET    me
    Should Be Equal As Integers    ${resp.status_code}    200
    Log    ${resp.json()}

Send Master Data Request
    Create Session   master   ${API_MASTER}
    ${resp}=  GET  master
    Should Be Equal As Integers    ${resp.status_code}    200
    Log    ${resp.json()}
