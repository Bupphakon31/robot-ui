*** Settings ***
Resource         ../../resources/configs/import.resource
Suite Setup      Setup Test Data
Test Setup       Open Browser by chrome
Test Teardown    Close Browser

*** Variables ***
${expected_login_page}    ${EMPTY}
${expected_login_success_page}    ${EMPTY}
${login_data_test}    ${EMPTY}

*** Test Cases ***

Login and Logout successfully
    [Documentation]    Test login and logout functionality with valid credentials
    Verify Login Page Elements    ${expected_login_page}
    Login with username and password    ${login_data_test}[valid_username]    ${login_data_test}[valid_password]
    Verify Login Success Page Elements    ${expected_login_success_page}
    Click Logout Button
    Verify Login Page Elements After Logout Successfully    ${expected_login_page}


Login failed with invalid username
    [Documentation]    Test login functionality with invalid username
    Verify Login Page Elements    ${expected_login_page}
    Login with username and password    ${login_data_test}[invalid_username]    ${login_data_test}[valid_password]
    Verify Login Page Elements After Login With Username Failed    ${expected_login_page}

Login failed with invalid password
    [Documentation]    Test login functionality with invalid password
    Verify Login Page Elements    ${expected_login_page}
    Login with username and password    ${login_data_test}[valid_username]    ${login_data_test}[invalid_password]
    Verify Login Page Elements After Login With Password Failed    ${expected_login_page}
