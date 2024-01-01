*** Settings ***
Library     Selenium2Library

*** Variables ***
${browser}  chrome
${url}      http://demowebshop.tricentis.com/register

*** Test Cases ***
RegTest
    ${speed}=   get selenium speed
    log to console  ${speed}

    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed      2 seconds

    select radio button     Gender      M

    input text      xpath://input[@id='FirstName']    Wirat
    input text      xpath://input[@id='LastName']     Sakorn
    input text      xpath://input[@id='Email']        suneed.2555@gmail.com

    input text      xpath://input[@id='Password']     ThisIsSun@0155
    input text      xpath://input[@id='ConfirmPassword']  ThisIsSun@0155

    ${speed}=   get selenium speed
    log to console  ${speed}

*** Keywords ***