*** Settings ***
Resource         ../config/settings.robot
Test Setup       Open App
Test Teardown    Quit Application

*** Test Cases ***
Valid credentials
    [Tags]             smoke
    [Documentation]    Login correcto con usuario y contraseña
    [Template]         Scenario Outline: Valid credentials
    # Examples:
    # user             password
    standard_user      secret_sauce

Invalid credentials
    [Template]       Scenario Outline: Invalid credentials
    # Examples:
    # user           password
    standard_user    invalid
    invalid          secret_sauce

*** Keywords ***
Scenario Outline: Valid credentials
    [Arguments]                                  ${user}    ${password}
    Given Login view is displayed
    When Set username input with ${user}
    And Set password input with ${password}
    And Tap sign in
    Then Home view is displayed

Scenario Outline: Invalid credentials
    [Arguments]                                  ${user}    ${password}
    Given Login view is displayed
    When Set username input with ${user}
    And Set password input with ${password}
    And Tap sign in
