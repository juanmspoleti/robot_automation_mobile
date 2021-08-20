*** Variables ***
${APP}            bs://7dfe6422e4db2386b5df5e93efd4d4bc860d0333
${DEVICE}         Google Pixel 3
${OS_VERSION}     10.0
${APP_PACKAGE}    com.epc.retail

${HUB_URL}    http://hub.browserstack.com/wd/hub
${USER}       juanspoleti1
${KEY}        CSSfGLerGDEzVX4PsGYL

*** Keywords ***
Open App
    Open Application    ${HUB_URL}                     device=${DEVICE}
    ...                 app=${APP}                     os_version=${OS_VERSION}    browserstack.user=${USER}
    ...                 appPackage=${APP_PACKAGE}      browserstack.key=${KEY}
