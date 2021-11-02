*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
TestCase1
    open browser    https://demo.nopcommerce.com/     chrome
    # click element      xpath://*[@id="demo-page"]
    click link      xpath:/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[2]/a
    input text      id:Email    rahulkumar161098@gmail.com
    input text      id:Password    rahultest
    click element       xpath:/html/body/div[6]/div[3]/div/div/div/div[2]/div[1]/div[2]/form/div[3]/button
    close browser

*** Keywords ***