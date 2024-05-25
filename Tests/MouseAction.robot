*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
MouseActions
    Open Browser    https://demo.nopcommerce.com/      chrome
    Maximize Browser Window
    Open Context Menu    xpath://body/div[6]/div[2]/ul[1]/li[4]/a[1]
    Sleep      3
    Click Link    xpath://body/div[6]/div[2]/ul[1]/li[4]/a[1]

#    double click action
#    Double Click Element    xpath://body/div[6]/div[2]/ul[1]/li[4]/a[1]
#    drag and drop
    go to    http://dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    sleep    3
    Drag And Drop    id:box6    id:box106

    close all browsers