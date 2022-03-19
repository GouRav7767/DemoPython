*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
LoginTest
        open browser     http://demo.automationtesting.in/Windows.html    chrome
        maximize browser window
        click button    xpath://a//button[@class="btn btn-info"]
        sleep    5
        switch window    title=Selenium    5     CURRENT
        click element    xpath://span[contains(text(),'Downloads')]
        title should be    Downloads | Selenium
        close window
        switch window    title=Frames & windows
        click link    Open New Seperate Windows
        sleep    3
