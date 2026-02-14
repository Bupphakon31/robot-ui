*** Settings ***

Library        SeleniumLibrary    timeout=10s
Library        Collections
Library        BuiltIn
Library        OperatingSystem
Library        Screenshot
Library        String

# keywords
Resource         ../../resources/keywords/common_keyword.resource
Resource         ../../resources/keywords/login_keyword.resource
Resource         ../../resources/keywords/login_success_keyword.resource

# Variables
Resource         ../variables/common_variables.resource
Resource         ../../resources/variables/common_variables.resource
Resource         ../../resources/variables/login_variables.resource
Resource         ../../resources/variables/login_success_variables.resource