*** Settings ***
Library     Selenium2Library

*** Variables ***
${usernameElem}     xpath:(//body/div[@id='app']/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/form[1]/div[1]/div[1]/div[2]/input)[1]
${passwordElem}     xpath:(//body/div[@id='app']/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/form[1]/div[2]/div[1]/div[2]/input)[1]
${imageElem}        xpath:(//body/div[@id='app']/div[1]/div[1]/div[1]/div[1]/div[1]/img)[1]

*** Test Cases ***
LoginTC
    open browser    https://opensource-demo.orangehrmlive.com/    chrome
    maximize browser window

    wait until element is visible   ${passwordElem}

    input text      ${usernameElem}   Admin
    input text      ${passwordElem}   admin123

    capture element screenshot  ${imageElem}    logo.png
    capture page screenshot     loginTC.png

*** Keywords ***