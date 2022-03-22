*** Settings ***
Library    SeleniumLibrary
Library    FlaUILibrary

*** Variables ***
${App_Path}    C:\\Users\\Gourav\\AppData\\Roaming\\Free JPG to PDF Converter\\PDF_Converter.exe
*** Test Cases ***
Desktop Application
         launch application    ${App_Path}
         sleep    2
         click    /Window/Pane[1]/Pane/Pane[1]/Pane[5]
         click    /Window/Window/Pane[1]/Pane[1]/Tree/TreeItem[2]/TreeItem[2]/TreeItem[6]
         click    /Window/Window/Pane[1]/Pane[2]/List/ListItem[6]
         click    /Window/Window/Button[1]
         click    /Window/Pane[1]/Pane/Pane[3]/Pane[1]
         #click    /Window/Window/Pane[2]/Button
         is element visible    /Window/Pane[1]/Pane/Pane[2]/ProgressBar
         take screenshot
         #take screenshots on failure
         sleep    2
         log to console    Successfully converted
         click    /Window/Pane[2]/Pane[2]


