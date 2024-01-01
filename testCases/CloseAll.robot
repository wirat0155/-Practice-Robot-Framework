*** Settings ***
Library     Selenium2Library

*** Variables ***
${browser}  chrome
${url}      http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
TestCase
    open browser    ${url}  ${browser}
    maximize browser window

    open browser    ${url}  ${browser}
    maximize browser window

    # close browser
    close all browsers

*** Keywords ***