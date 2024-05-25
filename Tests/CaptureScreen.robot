*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
Capture
    Open Browser    https://opensource-demo.orangehrmlive.com/       chrome
    Maximize Browser Window
    sleep       3
    Input Text    name:username        Admin
    Input Text    name:password        admin123
    Capture Element Screenshot      xpath://body/div[@id='app']/div[1]/div[1]/div[1]/div[1]/div[1]/img[1]      logo.png
    Capture Page Screenshot     wholepage.png