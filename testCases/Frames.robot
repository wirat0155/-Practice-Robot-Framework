*** Settings ***
Library     Selenium2Library

*** Variables ***
${browser}  chrome
${url}      https://www.selenium.dev/selenium/docs/api/java/index

*** Test Cases ***
HandleAlerts
    open browser    ${url}  ${browser}
    click element   xpath://button[contains(text(),'Confirm Box')]
    
    select frame    packageListFrame
    click link      org.openqa.selenium
    unselect frame
    sleep   3

    select frame    packageListFrame
    click link      WebDriver
    unselect frame
    sleep   3

    select frame    classFrame
    click link      index
    unselect frame
    sleep   3



    # handle alert    accept
    # handle alert    dismiss
    # handle alert    leave

    alert should be present     Press a button!



*** Keywords ***