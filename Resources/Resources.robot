*** Settings ***
Library     Selenium2Library

*** Keywords ***
LaunchBrowser
    [Arguments]     ${appUrl}   ${appBrowser}   
    Open Browser    ${appUrl}   ${appBrowser}   
    Maximize Browser Window
    ${title}=       Get Title
    [Return]    ${title}