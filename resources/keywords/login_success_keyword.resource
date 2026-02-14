*** Settings ***
Resource         ../../resources/configs/import.resource

*** Keywords ***

Verify Login Success Page Elements
    [Arguments]    ${expectedResult}
    [Documentation]    Verify that all elements on the login success page are visible
    Wait Until Element Is Visible    ${login_success_page}[message]
    Wait Until Element Contains      ${login_success_page}[message]    ${expectedResult}[message]
    Wait Until Element Is Visible    ${login_success_page}[title]
    Wait Until Element Contains      ${login_success_page}[title]            ${expectedResult}[title]
    Wait Until Element Is Visible    ${login_success_page}[description]
    Wait Until Element Contains      ${login_success_page}[description]      ${expectedResult}[description]
    Wait Until Element Is Visible    ${login_success_page}[logout_button]
    Wait Until Element Contains      ${login_success_page}[logout_button]    ${expectedResult}[logout_button]

Click Logout Button
    [Documentation]    Click the logout button on the login success page
    Click Element      ${login_success_page}[logout_button]
