*** Settings ***
Resource   ../resources/resources.robot

*** Keywords ***

Open Application Session
    Open Application    ${APPIUM_SERVER}    platformName=${PLATFORM}    deviceName=${DEVICE_NAME}    app=${APP_PATH}    automationName=${AUTOMATION_NAME}

Close Application Session
    Close Application



# HAZARD MENU

Open Hazard Menu
    Wait Until Element Is Visible    id=${LOC_MENU_HAZARD}
    Tap    id=${LOC_MENU_HAZARD}
    Wait Until Element Is Visible    id=${LOC_HAZARD_LIST}



# CREATE NEW HAZARD REPORT

Create New Hazard Report
    Wait Until Element Is Visible    id=${LOC_BUTTON_ADD_HAZARD}
    Tap    id=${LOC_BUTTON_ADD_HAZARD}
    Wait Until Element Is Visible    id=${LOC_FIELD_LOCATION}


Fill Hazard Mandatory Fields
    # Location
    Tap    id=${LOC_FIELD_LOCATION}
    Tap    xpath=${XPATH_SELECT_FIRST_ITEM}

    # Sublocation
    Tap    id=${LOC_FIELD_SUBLOCATION}
    Tap    xpath=${XPATH_SELECT_FIRST_ITEM}

    # Area
    Tap    id=${LOC_FIELD_AREA}
    Tap    xpath=${XPATH_SELECT_FIRST_ITEM}

    # Area Description (Optional)
    Input Text    id=${LOC_FIELD_AREA_DESC}    Sample hazard description from automation test

    # PIC (should be preselected, but click to confirm exists)
    Wait Until Element Is Visible    id=${LOC_FIELD_PIC}


Upload Hazard Evidence Image
    Tap    id=${LOC_FIELD_EVIDENCE}
    Wait Until Element Is Visible    id=${LOC_IMAGE_PICKER_GALLERY}
    Tap    id=${LOC_IMAGE_PICKER_GALLERY}
    Tap    xpath=${XPATH_GALLERY_FIRST_IMAGE}


Submit Hazard Report
    Tap    id=${LOC_SUBMIT_HAZARD}
    Wait Until Element Is Visible    id=${LOC_HAZARD_SUCCESS_POPUP}
    Tap    id=${LOC_SUCCESS_OK}


Verify Hazard Report Successfully Created
    Wait Until Element Is Visible    id=${LOC_HAZARD_LIST}
    Page Should Contain Element    xpath=${XPATH_LATEST_HAZARD_ENTRY}



# FOLLOW-UP TASK (PIC user logs in)

Open Followup Task As PIC
    # Navigate to follow-up task list
    Tap    id=${LOC_MENU_TASK}
    Wait Until Element Is Visible    id=${LOC_TASK_LIST}
    Tap    xpath=${XPATH_FIRST_TASK}


Fill Followup Task Fields
    # Upload resolution evidence
    Tap    id=${LOC_TASK_EVIDENCE}
    Wait Until Element Is Visible    id=${LOC_IMAGE_PICKER_GALLERY}
    Tap    id=${LOC_IMAGE_PICKER_GALLERY}
    Tap    xpath=${XPATH_GALLERY_FIRST_IMAGE}

    # Resolution Date (DateTime Picker)
    Tap    id=${LOC_TASK_RESOLUTION_DATE}
    Tap    id=${LOC_DATE_PICKER_OK}

    # Co Observer (+ Add)
    Tap    id=${LOC_TASK_ADD_CO_OBSERVER}
    Tap    xpath=${XPATH_SELECT_FIRST_ITEM}


Submit Followup Task
    Tap    id=${LOC_TASK_SUBMIT}
    Wait Until Element Is Visible    id=${LOC_TASK_SUCCESS_POPUP}
    Tap    id=${LOC_SUCCESS_OK}


Verify Followup Task Completed
    Wait Until Element Is Visible    id=${LOC_TASK_LIST}
    Page Should Contain Element    Completed
