***Settings***
Library     SeleniumLibrary

***Test Cases***
GetAllKinks
    open browser    https://www.flipkart.com/      chrome
    maximize browser window
    # count all links
    ${allLinks}     get element count   xpath://a
    log to console  ${allLinks}

    #extract all links
    @{list}     create list
    FOR   ${i}    IN RANGE    1   ${allLinks} 
    ${link_text}=   get text    xpath:(//a)[${i}]
    log to console  ${link_text} 
    END 
    close browser
