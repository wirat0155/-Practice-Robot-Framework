*** Settings ***
Library     Selenium2Library

*** Variables ***
${browser}  chrome
${url}      http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Testing Radio Buttons and Check Boxes
    open browser    ${url}      ${browser}
    maximize browser window
    
    select from list by label   continents  Asia
    sleep 5
    select from list by index   continents  5

    #select from list by value      continents  Asia

    #List box (multiple selection)
    select from list by label   selenium_commands   Switch Commands
    select from list by label   selenium_commands   WebElement Commands
    sleep 3
    unselect from list by label     selenium_commands   Switch Commands

*** Keywords ***