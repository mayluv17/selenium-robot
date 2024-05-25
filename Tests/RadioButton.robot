*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${browser}      chrome
${url}      https://demo.nopcommerce.com
*** Keywords ***
*** Test Cases ***
Test radio and check boxes
    Open Browser    ${url}      ${browser}
    Maximize Browser Window
    Set Selenium Speed    2seconds

    Select Radio Button    sex      female
    Select Radio Button    exp      5

    Select Checkbox    BlackCar
    Select Checkbox    redCar


    unselect checkbox    BlackCar
#   select dropdown
    Select From List By Label    continent      Australia
    Select From List By Index    continent      6
#    select list box
    Select From List By Label    seleniumCommand      Switch command
    Unselect From List By Label    seleniumCommand

#    Close Browser   ##close latest browser
    Close All Browsers 