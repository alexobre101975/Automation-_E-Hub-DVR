*** Settings ***
Library   AppiumLibrary
Resource    Resources/Keywords.robot

Suite Setup   Open app
Suite Teardown    Close All Applications

*** Test Cases ***
Test Tab Entertainment Tile VCR
    [Tags]    Automation

    Open App
    # NGG-TC-70
    Home DVR
    # NGG-TC-69
    Enter See All Recording Section DVR
    # NGG-TC-68
    Enter Recording Schedule Section DVR
    # NGG-TC-67
    Enter Recording Priority Section DVR
    # NGG-TC-66
    Enter DVR Storage Section DVR
