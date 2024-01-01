*** Settings ***
Library     Selenium2Library

*** Variables ***

*** Test Cases ***
GetAllLinksTest
    Open Browser    https://www.youtube.com/    chrome
    Maximize Browser Window
    ${allLinksCount}=   Get Element Count 	 xpath://a
    log to console  ${allLinksCount}

    ${LinkItems}    Create List
    FOR   ${i}    IN RANGE    ${allLinksCount}
        ${linkText}=    get text    xpath:(//a)[${i}]
        log to console  ${linkText}
    END

*** Keywords ***