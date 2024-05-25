*** Settings ***
Library     SeleniumLibrary
*** Keywords ***
LaunchBroweser
    [Arguments]    ${appurl}        ${appbrowser}
    Open Browser    ${appurl}        ${appbrowser}
    Maximize Browser Window
    ${title}=   Get Title
    RETURN    ${title}