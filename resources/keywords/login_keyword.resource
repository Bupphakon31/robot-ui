*** Settings ***
Resource         ../../resources/configs/import.resource

*** Keywords ***

Login with username and password
    [Arguments]    ${username}    ${password}
    [Documentation]    Test login functionality with valid credentials
    Input Text                  ${login_page}[username_field]       ${username}
    Input Text                  ${login_page}[password_field]       ${password}
    Click Button                ${login_page}[login_button]

Verify Login Page Elements
    [Arguments]    ${expectedResult}
    [Documentation]    Verify that all elements on the login page are visible
    Wait Until Element Is Visible    ${login_page}[title]
    Wait Until Element Contains      ${login_page}[title]    ${expectedResult}[title]
    Wait Until Element Is Visible    ${login_page}[description]
    Wait Until Element Contains      ${login_page}[description]    ${expectedResult}[description]
    Wait Until Element Is Visible    ${login_page}[username_label]
    Wait Until Element Contains      ${login_page}[username_label]    ${expectedResult}[username_label]
    Wait Until Element Is Visible    ${login_page}[username_field]
    Wait Until Element Is Visible    ${login_page}[password_label] 
    Wait Until Element Contains      ${login_page}[password_label]    ${expectedResult}[password_label]   
    Wait Until Element Is Visible    ${login_page}[password_field]
    Wait Until Element Is Visible    ${login_page}[login_button]
    Wait Until Element Contains      ${login_page}[login_button]    ${expectedResult}[login_button]


Verify Login Page Elements After Logout Successfully
    [Arguments]    ${expectedResult}
    [Documentation]    Verify that all elements on the login page are visible
    Wait Until Element Is Visible    ${login_page}[message]
    Wait Until Element Contains      ${login_page}[message]    ${expectedResult}[message][logout]
    Wait Until Element Is Visible    ${login_page}[title]
    Wait Until Element Contains      ${login_page}[title]    ${expectedResult}[title]
    Wait Until Element Is Visible    ${login_page}[description]
    Wait Until Element Contains      ${login_page}[description]    ${expectedResult}[description]
    Wait Until Element Is Visible    ${login_page}[username_label]
    Wait Until Element Contains      ${login_page}[username_label]    ${expectedResult}[username_label]
    Wait Until Element Is Visible    ${login_page}[username_field]
    Wait Until Element Is Visible    ${login_page}[password_label] 
    Wait Until Element Contains      ${login_page}[password_label]    ${expectedResult}[password_label]   
    Wait Until Element Is Visible    ${login_page}[password_field]
    Wait Until Element Is Visible    ${login_page}[login_button]
    Wait Until Element Contains      ${login_page}[login_button]    ${expectedResult}[login_button]

Verify Login Page Elements After Login With Username Failed
    [Arguments]    ${expectedResult}
    [Documentation]    Verify that all elements on the login page are visible
    Wait Until Element Is Visible    ${login_page}[message]
    Wait Until Element Contains      ${login_page}[message]    ${expectedResult}[message][invalid_username]
    Wait Until Element Is Visible    ${login_page}[title]
    Wait Until Element Contains      ${login_page}[title]    ${expectedResult}[title]
    Wait Until Element Is Visible    ${login_page}[description]
    Wait Until Element Contains      ${login_page}[description]    ${expectedResult}[description]
    Wait Until Element Is Visible    ${login_page}[username_label]
    Wait Until Element Contains      ${login_page}[username_label]    ${expectedResult}[username_label]
    Wait Until Element Is Visible    ${login_page}[username_field]
    Wait Until Element Is Visible    ${login_page}[password_label] 
    Wait Until Element Contains      ${login_page}[password_label]    ${expectedResult}[password_label]   
    Wait Until Element Is Visible    ${login_page}[password_field]
    Wait Until Element Is Visible    ${login_page}[login_button]
    Wait Until Element Contains      ${login_page}[login_button]    ${expectedResult}[login_button]

Verify Login Page Elements After Login With Password Failed
    [Arguments]    ${expectedResult}
    [Documentation]    Verify that all elements on the login page are visible
    Wait Until Element Is Visible    ${login_page}[message]
    Wait Until Element Contains      ${login_page}[message]    ${expectedResult}[message][invalid_password]
    Wait Until Element Is Visible    ${login_page}[title]
    Wait Until Element Contains      ${login_page}[title]    ${expectedResult}[title]
    Wait Until Element Is Visible    ${login_page}[description]
    Wait Until Element Contains      ${login_page}[description]    ${expectedResult}[description]
    Wait Until Element Is Visible    ${login_page}[username_label]
    Wait Until Element Contains      ${login_page}[username_label]    ${expectedResult}[username_label]
    Wait Until Element Is Visible    ${login_page}[username_field]
    Wait Until Element Is Visible    ${login_page}[password_label] 
    Wait Until Element Contains      ${login_page}[password_label]    ${expectedResult}[password_label]   
    Wait Until Element Is Visible    ${login_page}[password_field]
    Wait Until Element Is Visible    ${login_page}[login_button]
    Wait Until Element Contains      ${login_page}[login_button]    ${expectedResult}[login_button]
