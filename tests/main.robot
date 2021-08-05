*** Settings ***
Documentation     Tests of the nav screen of the app

Resource          ../resources/base.robot

Suite setup       Start Session
Suite Teardown    End Session
Test Teardown     End Test

*** Test Cases ***
Should Go To Dialogs Screen
  Go To Main Screen
  Open Hamburguer
  Navigate To Screen              DIALOGS
