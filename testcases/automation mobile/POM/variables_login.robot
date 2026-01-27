*** Variables ***

# Appium
${APPIUM_SERVER}           http://127.0.0.1:4723/wd/hub
${PLATFORM}                Android
${DEVICE_NAME}             emulator-5554
${APP_PATH}                D:/apps/wemine.apk
${AUTOMATION_NAME}         UiAutomator2

# Credentials
${VALID_USER}              test.user@company.com
${VALID_PASS}              Password123

# Login Screen Locators
${LOC_USERNAME}            com.wemine:id/input_username
${LOC_NEXT_BUTTON}         com.wemine:id/btn_next

# Microsoft Login Locators
${LOC_MS_PASSWORD}         com.microsoft:id/password_input
${LOC_MS_LOGIN_BUTTON}     com.microsoft:id/btn_signin

# Sync Master Data Locators
${LOC_MASTER_SYNC_PROGRESS}    com.wemine:id/progress_masterdata

# Restart locators
${LOC_RESTART_POPUP}       com.wemine:id/popup_restart
${LOC_RESTART_BUTTON}      com.wemine:id/btn_restart

# Home / Dashboard
${LOC_HOME_DASHBOARD}      com.wemine:id/home_dashboard

