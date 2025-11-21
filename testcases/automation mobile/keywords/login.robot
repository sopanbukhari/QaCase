*** Settings ***
Resource   ../resources/resources.robot

*** Keywords ***

Close Application Session
    Close Application

# LOGIN SCREEN

Input Username On Login Screen
    Wait Until Element Is Visible    id=${LOC_USERNAME}
    Tap    id=${LOC_USERNAME}
    Input Text    id=${LOC_USERNAME}    ${VALID_USER}

Tap Next Button
    Wait Until Element Is Visible    id=${LOC_NEXT_BUTTON}
    Tap    id=${LOC_NEXT_BUTTON}



# MICROSOFT LOGIN

Perform Microsoft Login
    Wait Until Element Is Visible    id=${LOC_MS_PASSWORD}
    Tap    id=${LOC_MS_PASSWORD}
    Input Text    id=${LOC_MS_PASSWORD}    ${VALID_PASS}
    Tap    id=${LOC_MS_LOGIN_BUTTON}

    # Tunggu redirect kembali ke app
    Wait Until Page Contains Element    id=${LOC_MASTER_SYNC_PROGRESS}    timeout=30s



# MASTER DATA DOWNLOAD

Wait For Master Data Download
    # Tunggu progress bar muncul
    Wait Until Element Is Visible    id=${LOC_MASTER_SYNC_PROGRESS}
    # Tunggu progress bar hilang setelah selesai (100%)
    Wait Until Element Is Visible    id=${LOC_MASTER_SYNC_PROGRESS}    timeout=120s



# RESTART

Confirm Restart Prompt
    Wait Until Element Is Visible    id=${LOC_RESTART_POPUP}
    Tap    id=${LOC_RESTART_BUTTON}



# VERIFY SUCCESS

Verify App Restart Successfully
    # Pastikan kembali ke dashboard / home
    Wait Until Element Is Visible    id=${LOC_HOME_DASHBOARD}    timeout=40s
