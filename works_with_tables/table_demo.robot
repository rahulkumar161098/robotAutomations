***Settings***
Library     SeleniumLibrary

***Test Cases***
Table
    open browser    http://testautomationpractice.blogspot.com/     chrome
    maximize browser window
    ${rows}=    get element count   xpath://*[@id="HTML1"]/div[1]/table/tbody/tr
    ${cols}=    get element count   xpath://*[@id="HTML1"]/div[1]/table/tbody/tr/th
    log to console  ${rows}
    log to console  ${cols}

    # print text in console
    ${data}     get text    xpath://*[@id="HTML1"]/div[1]/table/tbody/tr[5]/td[1]
    log to console  ${data}

    # validations in tables
    table column should contain     xpath://table[@name='BookTable']    2   Author
    table row should contain    xpath://table[@name='BookTable']    4   Animesh
    table cell should contain   xpath://table[@name='BookTable']   4   2   Animesh
    table header should contain     xpath://table[@name='BookTable']    Subject
    close browser