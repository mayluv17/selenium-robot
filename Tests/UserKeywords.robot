*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Resources.robot
*** Variables ***
${browser}      chrome
${url}      https://demowebshop.tricentis.com/

*** Test Cases ***
Test Case 1
    ${app_title}=   LaunchBroweser      ${url}      ${browser}
    sleep    3
    Input Text    name:Email     mercury
    Input Text    name:Password     mercury
    Log To Console    ${app_title}