*** Settings ***
Library     Selenium2Library

*** Variables ***

*** Test Cases ***
ScrollingTest
    Open Browser     https://www.sofascore.com/japan-thailand/FUbsvVb    chrome
    Maximize Browser Window
    # Execute Javascript 	 window.scrollTo(0, 1500)   # Scroll X,Y

    # Scroll to Element
    # Scroll Element Into View 	 xpath://h2[contains(text(),'Head-to-Head')]
    # Execute Javascript     window.scrollBy(0, 800)

    Execute Javascript     window.scrollTo(0, document.body.scrollHeight)   # end of the page
    Sleep   5
    Execute Javascript     window.scrollTo(0, -document.body.scrollHeight)   # start of the page
    Sleep   5
*** Keywords ***