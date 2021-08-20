*** Variables ***
${AUTOMATION_NAME}     UIAutomator2
${APP}                 ${CURDIR}/../../app/SauceLabs_2.7.1.apk
${PLATFORM_VERSION}    11
${APP_PACKAGE}         com.swaglabsmobileapp
${APP_ACTIVITY}        com.swaglabsmobileapp.MainActivity

${HUB_URL}    http://127.0.0.1:4723/wd/hub

*** Keywords ***
Open App
    open application    ${HUB_URL}                   automationName=${AUTOMATION_NAME}
    ...                 app=${APP}                   platformName=${platform}             platformVersion=${PLATFORM_VERSION}
    ...                 appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}
