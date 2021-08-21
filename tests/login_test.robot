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
    [Tags]           fail                                     
    [Template]       Scenario Outline: Invalid credentials
    # Examples:
    # user           password                                 message
    standard_user    invalid                                  El usuario y contraseña no coinciden con ningun usuario en este servicio.
    invalid          secret_sauce                             El usuario y contraseña no coinciden con ningun usuario en este servicio.

*** Keywords ***
Scenario Outline: Valid credentials
    [Arguments]                                ${user}    ${password}
    Given Login view is displayed
    When Set username input with ${user}
    And Set password input with ${password}
    And Tap sign in
    Then Home view is displayed

Scenario Outline: Invalid credentials
    [Arguments]                                ${user}    ${password}    ${message}
    Given Login view is displayed
    When Set username input with ${user}
    And Set password input with ${password}
    And Tap sign in
    Then Error message ${message} appears
