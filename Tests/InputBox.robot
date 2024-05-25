*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${browser}      chrome
${url}      https://demo.nopcommerce.com
*** Keywords ***
*** Test Cases ***
Test for inputText
    Open Browser    ${url}      ${browser}
    Maximize Browser Window
    Title Should Be    nopCommerce demo store
    Click Link    xpath://a[@class='ico-login']
    ${"email_input"}      Set Variable    id:Email

    Element Should Be Visible       ${"email_input"}
    Element Should Be Enabled       ${"email_input"}

    Input Text    ${"email_input"}        JohnDavid@gmail.com
    Sleep    5
    Clear Element Text      ${"email_input"}
    Sleep   3
    Close Browser