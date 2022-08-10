*** Settings ***
Library   AppiumLibrary
Resource    Resources/Keywords.robot

Suite Setup   Open app
Suite Teardown    Close All Applications

*** Test Cases ***
Test Tab Entertainment Tile VCR
    [Tags]    Automation

    Open App
    # NGG-TC-122
    Enter Window DVR
    # NGG-TC-123
    Enter Window See All Recording
    # NGG-TC-124
    Enter Window Recording Schedule
    # NGG-TC-125
    Enter Window Recording Priority
    # NGG-TC-126
    Enter Window DVR Storage
