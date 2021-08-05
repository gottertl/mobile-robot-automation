*** Settings ***
Documentation       This is the base file containing common tests and general setup configs

Library             AppiumLibrary

Resource            /actions/main.robot

*** Keywords ***
Start Session
  Set Appium Timeout    5
  Open Application      http://localhost:4723/wd/hub
  ...                   automationName=UiAutomator2
  ...                   platformName=Android
  ...                   deviceName=Emulator
  ...                   app=${EXECDIR}/app/twp.apk


End Session
  Close Application


End Test
  Capture Page Screenshot
