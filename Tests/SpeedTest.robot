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

    sleep       5
    ${speed}=    Get Selenium Speed     #put selenium speed in spped variable
    Set Selenium Speed    3     #execute every statment with 3 seconds delay
    Select Radio Button    Gender   M
    Input Text    name:Firstname        David
    Input Text    name:LastName        Jhon
    Input Text    name:Email        David@gmail.com
    Input Text    name:Password        john133$#
    Input Text    name:ConfirmPassword        john133$#
