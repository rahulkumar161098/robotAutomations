***Settings***
Library     SeleniumLibrary
Resource    ../data_driven_testing/login_resources.robot
Library     DataDriver  ../data_driven_testing/loginData.xlsx   sheet_name=Sheet1

Suite Setup     Open my browser
Suite Teardown      close Browser
Test Template   Invalid login

***Test Cases***
Login_test_with_excel using ${username} and ${password}


***Keywords***
Invalid login
    [Arguments]     ${username}     ${password}
    user inputs     ${username}
    user password   ${password}
    click login btn
    error message