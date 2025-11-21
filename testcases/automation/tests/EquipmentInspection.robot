*** Settings ***
Resource            ../keywords/EquipmentInspection.robot

Suite Setup         Open Web WeMineOffice
Suite Teardown    Close Browser

*** Variables ***
${TEST_IMAGE}       /mnt/data/testimage.png


*** Test Cases ***
TC01 - Load Equipment Inspection Page
    Open Equipment Inspection Page

TC02 - Open Submission Form
    Open Equipment Inspection Page
    Open Submission Form

TC03 - Fill Dynamic Fields (Example)
    Open Equipment Inspection Page
    Open Submission Form
    # Text Input
    Fill Text Field    css=input[name="field_text_1"]    Test Example
    # Date Input
    Pick Date    css=input[name="field_date_1"]    2025-11-20
    # Dropdown
    Select Option    css=select[name="field_select_1"]    Option 2
    # Radio
    Choose Radio Option    css=input[name="field_radio_1"][value="OptionA"]
    # Image Upload
    Upload Image    css=input[type="file"][name="image_field_1"]    ${TEST_IMAGE}

TC04 - Submit Valid Form
    Open Equipment Inspection Page
    Open Submission Form
    Fill Text Field    css=input[name="field_text_1"]    Completed Entry
    Pick Date    css=input[name="field_date_1"]    2025-11-20
    Select Option    css=select[name="field_select_1"]    Option 1
    Choose Radio Option    css=input[name="field_radio_1"][value="B"]
    Upload Image    css=input[type="file"][name="image_field_1"]    ${TEST_IMAGE}
    Submit Form

TC05 - Validate New Submission Appears In List
    Open Equipment Inspection Page
    Wait For Elements State    xpath=//table//tr[1]    visible
    # Validate something from the latest submission
    ${text}=    Get Text    xpath=//table//tr[1]/td[1]
    Should Not Be Empty    ${text}


