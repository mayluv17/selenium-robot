*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Resources.robot
*** Variables ***
${browser}      chrome
${url}      https://demo.nopcommerce.com/
*** Test Cases ***
ScrollingTest
    LaunchBroweser  ${url}      ${browser}
    sleep    2
#    execute javascript    window.scrollTo(0,500)
#    Scroll Element Into View    class:news-items
    execute javascript    window.scrollTo(0, document.body.scrollHeight)
    Sleep     3
    execute javascript    window.scrollTo(0, -document.body.scrollHeight)