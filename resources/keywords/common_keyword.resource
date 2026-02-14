*** Settings ***
Resource         ../../resources/configs/import.resource

*** Keywords ***

Open Browser by chrome
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Read JSON File
    [Arguments]    ${file_path}
    [Documentation]    Read and return JSON file content as dictionary
    ${json_string}=    Get File    ${file_path}
    ${json_data}=    Evaluate    json.loads('''${json_string}''')    json
    RETURN    ${json_data}

Setup Test Data
    [Documentation]    Load JSON files for test data
    ${expected_login_page}=    Read JSON File    ${CURDIR}/../expectedResult/expected_login_page.json
    ${expected_login_success_page}=    Read JSON File    ${CURDIR}/../expectedResult/expected_login_success_page.json
    ${login_data_test}=    Read JSON File    ${CURDIR}/../dataTest/login_page.json
    Set Suite Variable    ${expected_login_page}
    Set Suite Variable    ${expected_login_success_page}
    Set Suite Variable    ${login_data_test}
