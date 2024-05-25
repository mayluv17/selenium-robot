*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
TabbedWindows
    Open Browser    https://demo.nopcommerce.com/       chrome
    Click Element    xpath://a[contains(text(),'Twitter')]
#    Select Window    title=sakinalium | Home
    sleep   2
    Switch Window    title=nopCommerce (@nopCommerce) / X
    click element    xpath://span[contains(text(),'Replies')]
    sleep       1
    close all browsers
#
#    switch browser      1   #1 being the index
#    ${title}=   Get Title