*** Variables ***
${APP}             bs://eb5ad6fd9f56007d66ccecb23cecc3d6d8bcfe65
${DEVICE}          iPhone XS
${OS_VERSION}      12
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
