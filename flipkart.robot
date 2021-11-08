***Settings***
Library     SeleniumLibrary

***Test Cases***
Search In Flipkart
    open browser    https://www.flipkart.com/   chrome
    maximize browser window
    sleep   2
    input text      name:q    mobiles    1
    click element   xpath://*[@id="container"]/div/div[1]/div[1]/div[2]/div[2]/form/div/button
    # //*[@id="container"]/div/div[1]/div[1]/div[2]/div[2]/form/div/button
    close browser