*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
LoginTest
        open browser     http://demo.automationtesting.in/Windows.html    chrome
        maximize browser window
        click element    xpath://button[text()='click']
