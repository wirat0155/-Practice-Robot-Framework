*** Settings ***
Library     Selenium2Library

*** Variables ***
${browser}  chrome
${url}      https://testautomationpractice.blogspot.com/

*** Test Cases ***
HandleAlerts
    open browser    ${url}  ${browser}
    click element   xpath://button[contains(text(),'Confirm Box')]
    sleep   3

    # handle alert    accept
    # handle alert    dismiss
    # handle alert    leave

    alert should be present     Press a button!



*** Keywords ***