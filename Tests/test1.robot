*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${browser}      chrome
${url}      https://demo.nopcommerce.com/
*** Keywords ***
Login to application
    Open Browser      ${url}     ${browser}
    sleep    1
    Click Link    xpath://a[@class='ico-login']
    Input Text    id:Email      pabdskj@gmail.com
    Input Text    id:Password       nlkwoerfihu$#
    Click Element    xpath://button[@class='button-1 login-button']
    Close Browser
*** Test Cases ***
Login Test
    Login to application

