*** Settings ***
Library     Selenium2Library

*** Variables ***


*** Test Cases ***
MouseActions\
    # # Right Click on Menu
    # Open Browser    http://swisnl.github.io/jQuery-contextMenu/demo.html    chrome
    # Maximize Browser Window
    # Open Context Menu 	 xpath://span[contains(text(),'right click me')]
    # Sleep   3

    # Double Click
    # Open Browser  https://testautomationpractice.blogspot.com/  chrome
    # Maximize Browser Window
    # Double Click Element 	 xpath://button[contains(text(),'Copy Text')]
    # Sleep   3

    # Drag and Drop
    Open Browser  http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html    chrome
    Maximize Browser Window
    Drag and Drop 	 id:box5 	 id:box105
    Sleep   3

*** Keywords ***