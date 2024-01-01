*** Settings ***
Library     Selenium2Library

*** Variables ***

*** Test Cases ***
TableValidations
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    Maximize Browser Window
    ${rows}=    Get Element Count 	xpath://table[@name='BookTable']/tbody/tr
    ${cols}=    Get Element Count   xpath://table[@name='BookTable']/tbody/tr[1]/th

    log to console  ${rows}
    log to console  ${cols}

    ${data}=    get text    xpath://table[@name='BookTable']/tbody/tr[5]/td[1]
    log to console  ${data}

    Table Column Should Contain 	xpath://table[@name='BookTable']	 2 	 Author
    Table Row Should Contain 	    xpath://table[@name='BookTable'] 	 4 	 Learn JS
    Table Cell Should Contain 	    xpath://table[@name='BookTable'] 	 5 	 2 	 Mukesh 	 loglevel=INFO
    Table Header Should Contain 	xpath://table[@name='BookTable'] 	 BookName
*** Keywords ***