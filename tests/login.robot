*** Settings ***
Documentation     Tests of the login screen of the app

Resource          ../resources/base.robot

Suite setup       Start Session
Suite Teardown    End Session
Test Teardown     End Test

*** Variables ***
${email}      eu@papito.io
${password}   qaninja

*** Test Cases ***
Scenario: Successful Login
  Go To Main Screen
  Open Hamburguer
  Navigate To Screen          FORMS

  Click Text                  LOGIN
  Wait Until Page Contains    Fala QA, vamos testar o login?

  Login With                  ${email}    ${password}
  Wait Until Page Contains    Show! Suas credenciais são validas.
