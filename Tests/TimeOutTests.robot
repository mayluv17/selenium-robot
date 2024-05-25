*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${browser}      chrome
${url}      https://demowebshop.tricentis.com/register
*** Keywords ***
*** Test Cases ***
Registration test
    Open Browser    ${url}      ${browser}
    Maximize Browser Window
    Set Selenium Timeout    10 seconds    #force the next line to wait 10sec
    Wait Until Page Contains    Register            #max time is 5sec

    Select Radio Button    Gender   M
    Input Text    name:Firstname        David
    Input Text    name:LastName        Jhon
    Input Text    name:Email        David@gmail.com
    Input Text    name:Password        john133$#
    Input Text    name:ConfirmPassword        john133$#
