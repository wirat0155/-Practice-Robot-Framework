*** Settings ***
Library     Selenium2Library

*** Variables ***
${supportLink}  xpath:(//header/nav[1]/div[1]/ul[1]/li[5]/a)[1]

*** Test Cases ***
TestCase
    open browser     http://demo.automationtesting.in/Windows.html   chrome
    maximize browser window
    wait until element is visible   xpath:(//button[@class='btn btn-info'])[1]
    click element    xpath:(//button[@class='btn btn-info'])[1]
    # @{WindowHandles}=   get window handles
    # sleep    4s
    # @{WindowIdentifier}=    get window identifiers
    # sleep    4s
    # @{WindowsNames}=    get window names
    # sleep   4s
    # @{WindowsTitle}=    get window titles
    # sleep    4s
    # set window position    100  300
    # ${x}  ${y}=       get window position
    # log    ${x}
    # log    ${y}
    # sleep    4
    # set window size    800  600
    # ${width}     ${height}=     get window size
    # log     ${width}
    # log    ${height}
    # sleep    4
    # switch window    title=Frames & windows
    # sleep    4s
    switch window      title=Selenium
    wait until element is visible   ${supportLink}
    click link        ${supportLink}

*** Keywords ***