***Settings***
Library     SeleniumLibrary

*** Variables ***
${url}  http://www.practiceselenium.com/practice-form.html
${browser}  chrome

*** Test Cases ***
Testing radio button and check box
    open browser    ${url}  ${browser}
    maximize browser window
    sleep   3

    #radio button
    select radio button     sex     Female
    sleep   3

    #check box
    select checkbox     BlackTea
    select checkbox     RedTea
    sleep   3
    unselect checkbox       BlackTea
    sleep   3
    close browser 