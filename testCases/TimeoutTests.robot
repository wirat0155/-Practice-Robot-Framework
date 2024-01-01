*** Settings ***
Library     Selenium2Library

*** Variables ***
${browser}  chrome
${url}      http://demowebshop.tricentis.com/register

*** Test Cases ***
RegTest
    open browser    ${url}      ${browser}
    maximize browser window

    ${time}=    get selenium timeout
    log to console  ${time}

    set selenium timeout    10 seconds
    wait until page contains    Register    # default timeout 5 secs

    select radio button     Gender      M
    input text      xpath://input[@id='FirstName']    Wirat
    input text      xpath://input[@id='LastName']     Sakorn
    input text      xpath://input[@id='Email']        suneed.2555@gmail.com

    input text      xpath://input[@id='Password']     ThisIsSun@0155
    input text      xpath://input[@id='ConfirmPassword']  ThisIsSun@0155

    ${time}=    get selenium timeout
    log to console  ${time}

*** Keywords ***