***Settings***
Library     SeleniumLibrary

***Test Cases***
Speed Test
    open browser    http://demowebshop.tricentis.com/register   chrome
    maximize browser window

    open browser    http://www.practiceselenium.com/practice-form.html   chrome
    # maximize browser window
    sleep   2
    close all browsers