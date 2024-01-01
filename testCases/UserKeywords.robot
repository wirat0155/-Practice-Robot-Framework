*** Settings ***
Library     Selenium2Library
Resource    ./../Resources/Resources.robot

*** Variables ***
${url}      https://www.google.com/
${browser}  chrome

*** Test Cases ***
TC1
    ${pageTitle}=   LaunchBrowser   ${url}  ${browser}
    Input Text      xpath://textarea[@id='APjFqb']      Sofascore      # Search Box
    Click Element   xpath:(//body/div[1]/div[3]/form[1]/div[1]/div[1]/div[4]/center[1]/input)[1]
    Sleep   3