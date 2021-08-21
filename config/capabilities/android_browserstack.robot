*** Variables ***
${APP}             bs://ef256b3a275f25d76863c23df751d993c93a9f1f
${DEVICE}          Google Pixel 3
${OS_VERSION}      10.0
${APP_PACKAGE}     com.swaglabsmobileapp
${LANGUAGE}        es
${LOCALE}          AR
${IDLE_TIMEOUT}    10

${HUB_URL}    http://hub.browserstack.com/wd/hub
${USER}       juanspoleti1
${KEY}        CSSfGLerGDEzVX4PsGYL

*** Keywords ***
Open App
    Open Application    ${HUB_URL}                   device=${DEVICE}
    ...                 app=${APP}                   os_version=${OS_VERSION}                    browserstack.user=${USER}
    ...                 appPackage=${APP_PACKAGE}    browserstack.key=${KEY}                     language=${LANGUAGE}
    ...                 locale=${LOCALE}             browserstack.idleTimeout=${IDLE_TIMEOUT}
