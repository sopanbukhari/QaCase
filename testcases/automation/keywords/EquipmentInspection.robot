*** Settings ***
Resource            ../resources/resources.robot  
*** Keywords ***
Open Equipment Inspection Page
    New Page    ${BASE_URL}/equipment-inspection
    Wait For Elements State    css=.submission-list    visible
    Wait For Elements State    css=button#create-submission    visible

Open Submission Form
    Click    css=button#create-submission
    Wait For Elements State    css=input[name="formCode"]    visible

Fill Text Field
    [Arguments]    ${locator}    ${value}
    Fill Text    ${locator}    ${value}
    Sleep    0.2

Pick Date
    [Arguments]    ${locator}    ${date}
    Click    ${locator}
    Fill Text    ${locator}    ${date}
    Sleep    0.2

Select Option
    [Arguments]    ${locator}    ${option}
    Select Options By    ${locator}    text    ${option}

Choose Radio Option
    [Arguments]    ${locator}
    Click    ${locator}

Upload Image
    [Arguments]    ${locator}    ${filepath}
    Choose File    ${locator}    ${filepath}

Submit Form
    Click    ${BTN_SUBMIT}
    Wait For Elements State    css=.toast-success    visible    timeout=10s
