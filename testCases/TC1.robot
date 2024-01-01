*** Settings ***
Library     Selenium2Library

*** Variables ***
${browser}  chrome
${url}      https://demo.nopcommerce.com/

*** Test Cases ***
LoginTest
    open browser    ${url}   ${browser}
    loginToApplication
    close browser

*** Keywords ***
loginToApplication
    click link      xpath://a[contains(text(),'Log in')]
    input text      xpath://input[@id='Email']              sunneed.2555@gmail.com
    input text      xpath://input[@id='Password']           ThisIsSun@0155
    click element   xpath://button[contains(text(),'Log in')]