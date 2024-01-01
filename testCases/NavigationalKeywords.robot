*** Settings ***
Library     Selenium2Library

*** Test Cases ***
NavigationTest
    open browser    https://www.google.com/     chrome
    ${loc}=         get location
    log to console  ${loc}

    sleep   3

    go to           https://www.bing.com/
    ${loc}=         get location
    log to console  ${loc}

    sleep   3

    go back
    ${loc}=         get location
    log to console  ${loc}

    sleep   3

*** Keywords ***