***Settings***
Library     SeleniumLibrary

***Test Cases***
Scrolling Page
    open browser    https://www.wikipedia.org/  chrome
    maximize browser window
    sleep   3
    # execute javascript      window.scrollTo(0,1500)
    # scroll element into view    xpath://*[@id="www-wikipedia-org"]/div[9]/div[3]/div[1]/a/div[2]/span[2]

    # till end of the page
    execute javascript  window.scrollTo(0,document.body.scrollHeight)       #end of the page
    sleep   3
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)     #start page
    close browser