*** Settings ***
Resource   ../keywords/hazard.robot

*** Test Cases ***
#Testing for all flow (E2E)
Safety Hazard Report End-to-End Flow
    Open Hazard Menu
    Create New Hazard Report
    Fill Hazard Mandatory Fields
    Upload Hazard Evidence Image
    Submit Hazard Report
    Verify Hazard Report Successfully Created
    Open Followup Task As PIC
    Fill Followup Task Fields
    Submit Followup Task
    Verify Followup Task Completed
