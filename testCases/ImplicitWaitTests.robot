*** Settings ***
Library     Selenium2Library

*** Variables ***
${browser}  chrome
${url}      http://demowebshop.tricentis.com/register

*** Test Cases ***
RegTest
    open browser    ${url}      ${browser}
    maximize browser window

    ${implicitTime}=    get selenium implicit wait
    log to console  ${implicitTime}

    set selenium implicit wait  10 seconds

    ${implicitTime}=    get selenium implicit wait
    log to console  ${implicitTime}

    select radio button     Gender      M
    input text      xpath://input[@id='FirstName1']    Wirat
    input text      xpath://input[@id='LastName']     Sakorn
    input text      xpath://input[@id='Email']        suneed.2555@gmail.com

    input text      xpath://input[@id='Password']     ThisIsSun@0155
    input text      xpath://input[@id='ConfirmPassword']  ThisIsSun@0155

*** Keywords ***