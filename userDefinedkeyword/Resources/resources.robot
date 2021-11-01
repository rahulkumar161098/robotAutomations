***Settings***
Library     SeleniumLibrary

***Keywords***
launchBrowser
    # without arguments
    # open browser    ${url}  ${browser}
    # maximize browser window

    # with arguments
    [Arguments]     ${appurl}   ${appbrowser}
    open browser    ${appurl}   ${appbrowser}
    maximize browser window
    ${title}    get title
    [Return]    ${title}