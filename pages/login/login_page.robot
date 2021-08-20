*** Keywords ***
Login Page Opened
    Wait Until Element Is Visible    ${USERNAME_FIELD}    timeout=20
    Element Should Be Visible        ${USERNAME_FIELD}
    Element Should Be Visible        ${PASSWORD_FIELD}

Input Username
    [Arguments]    ${user}
    Input Text     ${USERNAME_FIELD}    ${user}

Input Password
    [Arguments]    ${password}
    Input Text     ${PASSWORD_FIELD}    ${password}

Tap Sign In Button
    Hide Keyboard
    Click Element    ${LOGIN_BUTTON}
