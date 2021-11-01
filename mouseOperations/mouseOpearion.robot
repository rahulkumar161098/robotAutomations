***Settings***
Library     SeleniumLibrary

***Test Cases***
MouseAction
    # Right click action

    # open browser    http://swisnl.github.io/jQuery-contextmenu/demo.html    chrome
    # maximize browser window
    # open context menu   xpath:
    # sleep   3

    #Double click action
    open browser    http://testautomationpractice.blogspot.com/     chrome
    maximize browser window
    Double click element    xpath://*[@id="HTML10"]/div[1]/button
    sleep   3


    #Drag and Drop Options
    go to   http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    maximize browser window
    # drag and drag   source element   target element
    drag and drop   id:box2     id:box106
    sleep   3
    close browser
