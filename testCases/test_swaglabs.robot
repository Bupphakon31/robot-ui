*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}            https://www.saucedemo.com/
${BROWSER}        Chrome
${USERNAME}       standard_user
${PASSWORD}       secret_sauce

*** Test Cases ***
Login And Add Product To Cart
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Input Text    id=user-name    ${USERNAME}
    Input Text    id=password    ${PASSWORD}
    Click Button    id=login-button
    Wait Until Page Contains    Products
    Click Button    id=add-to-cart-sauce-labs-backpack
    Element Should Contain    class=shopping_cart_badge    1
    Close Browser
