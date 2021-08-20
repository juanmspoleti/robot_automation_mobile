*** Variables ***
${AUTOMATION_NAME}     XCUITest
${APP}                 ${CURDIR}/../../app/SauceLabs_2.7.1.ipa
${PLATFORM_VERSION}    14.6
${APP_PACKAGE}         ${EMPTY}

${HUB_URL}    http://127.0.0.1:4723/wd/hub

*** Keywords ***
Open App
    open application    ${HUB_URL}                   automationName=${AUTOMATION_NAME}
    ...                 app=${APP}                   platformName=${platform}        platformVersion=${PLATFORM_VERSION}
    ...                 appPackage=${APP_PACKAGE}