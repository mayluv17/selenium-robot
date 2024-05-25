*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
Navigation
    Open Browser    https://demo.nopcommerce.com/       chrome
    sleep    3
    ${loc}=     Get Location
    Log To Console    ${loc}
    Go to    https://www.bing.com
    sleep    3
    Go back