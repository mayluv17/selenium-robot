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

    Set Selenium Implicit Wait    10 seconds
    #wait for an element for 10 seconds if not found at first otherwise proceed
    Select Radio Button    Gender   M
    Input Text    name:Firstname        David
    Input Text    name:LastName        Jhon
    Input Text    name:Email        David@gmail.com
    Input Text    name:Password        john133$#
    Input Text    name:ConfirmPassword        john133$#
