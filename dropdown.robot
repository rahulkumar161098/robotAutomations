*** Settings ***
Library     SeleniumLibrary

***Variables***
${url}  http://www.practiceselenium.com/practice-form.html
${browser}  chrome

***Test Cases***
Dropdown and list
    open browser    ${url}  ${browser}
    maximize browser window
    sleep   3
    select from list by label   continents  Asia
    sleep   5
    select from list by label   continents  North America

    #work with lists
    sleep   3
    select from list by label   selenium_commands   Navigation Commands
    sleep   2
    select from list by label   selenium_commands   Switch Commands
