*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
Testing frames
    Open Browser    https://seleniumhq.github.io/selenium/docs/api/java/index       chrome

    Select Frame    packageListFrame        #id name xpath
    Click Link      org.openga.selenium
    Unselect Frame