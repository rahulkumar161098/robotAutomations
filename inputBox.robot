***Settings***
Library     SeleniumLibrary

*** Variables ***
${url}  https://demo.nopcommerce.com/
${browser}  chrome

*** Test Cases ***
Testing inputBox
    open browser    ${url}  ${browser}
    maximize browser window
    title should be     nopCommerce demo store 
    click link      xpath:/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[2]/a
    ${"email"}  set Variable    id:Email
    element should be visible     ${"email"}
    input text  ${"email"}  hello
    sleep   5
    clear element text  ${"email"}
    sleep   3
    close browser 