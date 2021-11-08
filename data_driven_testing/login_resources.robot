***Settings***
Library     SeleniumLibrary

***Variables***
${login_url}    https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F
${browser}      chrome

***Keywords***
Open my browser
    open browser    ${login_url}    ${browser}
    maximize browser window

close Browser
    close all browsers

Opne login page
    go to   ${login_url}

user inputs
    [Arguments]     ${username}
    input text      id:Email     ${username}

user password
    [Arguments]     ${password}
    input text      id:Password     ${password}

click login btn
    click element   xpath://button[contains(text(),'Log in')]

# click log out

error message
    page should contain     Login was unsuccessful

