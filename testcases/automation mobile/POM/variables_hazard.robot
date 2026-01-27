*** Variables ***

# Appium Settings
${APPIUM_SERVER}           http://127.0.0.1:4723/wd/hub
${PLATFORM}                Android
${DEVICE_NAME}             emulator-5554
${APP_PATH}                D:/apps/wemine.apk
${AUTOMATION_NAME}         UiAutomator2


# Menu Locators
${LOC_MENU_HAZARD}         com.wemine:id/menu_hazard
${LOC_MENU_TASK}           com.wemine:id/menu_task
${LOC_HAZARD_LIST}         com.wemine:id/hazard_list
${LOC_TASK_LIST}           com.wemine:id/task_list


# Hazard Form Fields
${LOC_BUTTON_ADD_HAZARD}   com.wemine:id/btn_add
${LOC_FIELD_LOCATION}      com.wemine:id/input_location
${LOC_FIELD_SUBLOCATION}   com.wemine:id/input_sublocation
${LOC_FIELD_AREA}          com.wemine:id/input_area
${LOC_FIELD_AREA_DESC}     com.wemine:id/input_area_desc
${LOC_FIELD_PIC}           com.wemine:id/input_pic
${LOC_FIELD_EVIDENCE}      com.wemine:id/input_evidence


# Image Picker
${LOC_IMAGE_PICKER_GALLERY}    com.android.gallery:id/gallery
${XPATH_GALLERY_FIRST_IMAGE}   //android.widget.ImageView[1]


# Submit Hazard
${LOC_SUBMIT_HAZARD}       com.wemine:id/btn_submit
${LOC_HAZARD_SUCCESS_POPUP}    com.wemine:id/popup_success
${LOC_SUCCESS_OK}              com.wemine:id/btn_ok
${XPATH_LATEST_HAZARD_ENTRY}   (//android.widget.TextView[@id='hazard_title'])[1]


# Followup Task
${XPATH_FIRST_TASK}                (//android.widget.FrameLayout)[1]
${LOC_TASK_EVIDENCE}               com.wemine:id/task_evidence
${LOC_TASK_RESOLUTION_DATE}        com.wemine:id/task_resolution_date
${LOC_TASK_ADD_CO_OBSERVER}        com.wemine:id/task_add_observer
${LOC_TASK_SUBMIT}                 com.wemine:id/task_submit
${LOC_TASK_SUCCESS_POPUP}          com.wemine:id/task_success


# Date Picker
${LOC_DATE_PICKER_OK}              android:id/button1


# Generic Selector
${XPATH_SELECT_FIRST_ITEM}         (//android.widget.TextView)[1]
