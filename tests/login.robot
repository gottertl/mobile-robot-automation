*** Settings ***
Documentation         Tests of the login screen of the app

Resource              ../resources/base.robot

Test Setup           Start Session
Test Teardown        End Session


*** Variables ***
${email}              eu@papito.io
${password}           qaninja
${invalid_password}   pwd


*** Test Cases ***
Scenario: Successful Login
  Go To Login Page

  Login With                  ${email}    ${password}
  Wait Until Page Contains    Show! Suas credenciais são validas.

  [Teardown]
  Capture Page Screenshot
  Close Application


Scenario: Blank Email
  Go To Login Page

  Login With                  ${EMPTY}    ${password}
  Wait Until Page Contains    Por favor, informe um email bom!


Scenario: Blank Password
  Go To Login Page

  Login With                  ${email}    ${EMPTY}
  Wait Until Page Contains    Oops! Senha em branco!


Scenario: Invalid Credentials
  Go To Login Page

  Login With                  ${email}    ${invalid_password}
  Wait Until Page Contains    Senha inválida!
