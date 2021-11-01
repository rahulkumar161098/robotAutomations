***Settings***
Library     SeleniumLibrary

***Test Cases***
LoginTC
    open browser    https://opensource-demo.orangehrmlive.com/  chrome
    maximize browser window
    input text  id:txtUsername  Admin
    input text  id:txtPassword  Admin123
    
    #particular element capture
    # capture element screenshot  xpath://*[@id="divLogo"]/img    I:/robotAutomations/logo.png  #with particular location
    
    #full screen capture With location
    # capture page screenshot     I:/robotAutomations/full.png

    #particular element capture with without location specification
    capture element screenshot  xpath://*[@id="divLogo"]/img    logo.png
    capture page screenshot     LoginTC.png

