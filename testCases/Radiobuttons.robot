*** Settings ***
Library     Selenium2Library

*** Variables ***
${browser}  chrome
${url}      http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Testing Radio Buttons and Check Boxes
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed      2seconds    # delay each command 2s

    # Selecting Radio buttons
    select radio button         sex     Female
    select radio button         exp     5

    #Selecing Checkbox
    select checkbox             BlackTea
    select checkbox             RedTea
    unselect checkbox           BlackTea

*** Keywords ***