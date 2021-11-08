***Settings***
Library     SeleniumLibrary
Resource    ../data_driven_testing/login_resources.robot
Suite Setup     Open my browser
Suite Teardown      close Browser
Test Template   Invalid login

***Test Cases***            username                password
Right user empty password   admin@yourstore.com       ${EMPTY}




***Keywords***
Invalid login
    [Arguments]     ${username}     ${password}
    user inputs     ${username}
    user password   ${password}
    click login btn
    error message