*** Keywords ***
Login view is displayed
    Login Page Opened

Set username input with ${user}
    Input Username    ${user}

Set password input with ${password}
    Input Password    ${password}

Tap sign in
    Tap Sign In Button

Print variable
    ${pole}     Get Variable Value    ${prueba}
    Log   ${pole}