*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${browser}      chrome
${url}      https://demo.nopcommerce.com
*** Test Cases ***
Handle Alert
    Open Browser    ${url}
    Click Element    xpath://*[@id="HTML9"]/div[1]/button           #opens the alert window
    Handle Alert    accept
    Handle Alert    dismiss     #press the alert cancel button
    Handle Alert    leave
    Alert Should Be Present    Press a button!      #will close the alert after verification

