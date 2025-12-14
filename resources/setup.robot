*** Settings ***
Library    AppiumLibrary

*** Variables ***
${REMOTE_URL}    http://127.0.0.1:4723
${PLATFORM}      Android
${DEVICE_NAME}   Android Device
${AUTOMATION}    UiAutomator2
${APP_PACKAGE}   com.wdiodemoapp
${APP_ACTIVITY}  com.wdiodemoapp.MainActivity


*** Keywords ***
Abrir App
    Open Application
    ...    ${REMOTE_URL}
    ...    platformName=${PLATFORM}
    ...    deviceName=${DEVICE_NAME}
    ...    automationName=${AUTOMATION}
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}
    ...    autoGrantPermissions=true
