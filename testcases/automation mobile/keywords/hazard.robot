*** Settings ***
Resource    ../resources/resources.robot
Library     AppiumLibrary


*** Keywords ***
Open Application Session
    Open Application
    ...    ${APPIUM_SERVER}
    ...    platformName=${PLATFORM}
    ...    deviceName=${DEVICE_NAME}
    ...    app=${APP_PATH}
    ...    automationName=${AUTOMATION_NAME}

Close Application Session
    Close Application

# HAZARD MENU

Open Hazard Menu
    Wait Until Element Is Visible    id=${LOC_MENU_HAZARD}
    Click Element    id=${LOC_MENU_HAZARD}
    Wait Until Element Is Visible    id=${LOC_HAZARD_LIST}

# CREATE NEW HAZARD REPORT

Create New Hazard Report
    Wait Until Element Is Visible    id=${LOC_BUTTON_ADD_HAZARD}
    Click Element    id=${LOC_BUTTON_ADD_HAZARD}
    Wait Until Element Is Visible    id=${LOC_FIELD_LOCATION}

Fill Hazard Mandatory Fields
    # Location
    Click Element    id=${LOC_FIELD_LOCATION}
    Click Element    xpath=${XPATH_SELECT_FIRST_ITEM}

    # Sublocation
    Click Element    id=${LOC_FIELD_SUBLOCATION}
    Click Element    xpath=${XPATH_SELECT_FIRST_ITEM}

    # Area
    Click Element    id=${LOC_FIELD_AREA}
    Click Element    xpath=${XPATH_SELECT_FIRST_ITEM}

    # Area Description (Optional)
    Input Text    id=${LOC_FIELD_AREA_DESC}    Sample hazard description from automation test

    # PIC (should be preselected, but click to confirm exists)
    Wait Until Element Is Visible    id=${LOC_FIELD_PIC}

Upload Hazard Evidence Image
    Click Element    id=${LOC_FIELD_EVIDENCE}
    Wait Until Element Is Visible    id=${LOC_IMAGE_PICKER_GALLERY}
    Click Element    id=${LOC_IMAGE_PICKER_GALLERY}
    Click Element    xpath=${XPATH_GALLERY_FIRST_IMAGE}

Submit Hazard Report
    Click Element    id=${LOC_SUBMIT_HAZARD}
    Wait Until Element Is Visible    id=${LOC_HAZARD_SUCCESS_POPUP}
    Click Element    id=${LOC_SUCCESS_OK}

Verify Hazard Report Successfully Created
    Wait Until Element Is Visible    id=${LOC_HAZARD_LIST}
    Page Should Contain Element    xpath=${XPATH_LATEST_HAZARD_ENTRY}

# FOLLOW-UP TASK (PIC user logs in)

Open Followup Task As PIC
    # Navigate to follow-up task list
    Click Element    id=${LOC_MENU_TASK}
    Wait Until Element Is Visible    id=${LOC_TASK_LIST}
    Click Element    xpath=${XPATH_FIRST_TASK}

Fill Followup Task Fields
    # Upload resolution evidence
    Click Element    id=${LOC_TASK_EVIDENCE}
    Wait Until Element Is Visible    id=${LOC_IMAGE_PICKER_GALLERY}
    Click Element    id=${LOC_IMAGE_PICKER_GALLERY}
    Click Element    xpath=${XPATH_GALLERY_FIRST_IMAGE}

    # Resolution Date (DateTime Picker)
    Click Element    id=${LOC_TASK_RESOLUTION_DATE}
    Click Element    id=${LOC_DATE_PICKER_OK}

    # Co Observer (+ Add)
    Click Element    id=${LOC_TASK_ADD_CO_OBSERVER}
    Click Element    xpath=${XPATH_SELECT_FIRST_ITEM}

Submit Followup Task
    Click Element    id=${LOC_TASK_SUBMIT}
    Wait Until Element Is Visible    id=${LOC_TASK_SUCCESS_POPUP}
    Click Element    id=${LOC_SUCCESS_OK}

Verify Followup Task Completed
    Wait Until Element Is Visible    id=${LOC_TASK_LIST}
    Page Should Contain Element    Completed
