*** Settings ***
Library     Selenium2Library

*** Variables ***
${browser}  chrome
${url}      https://demo.nopcommerce.com/

*** Test Cases ***
LoginTest
    open browser        ${url}   ${browser}
    maximize browser window
    title should be     nopCommerce demo store
    click link          xpath://a[contains(text(),'Log in')]
    ${"email_elem"}     set variable       xpath://input[@id='Email']

    element should be visible       ${"email_elem"}
    element should be enabled       ${"email_elem"}

    input text          ${"email_elem"}     sunneed.2555@gmail.com
    sleep   5
    clear element text  ${"email_elem"}
    sleep   3
    close browser 

*** Keywords ***