*** Settings ***
Documentation       This is the page for Login screen actions

*** Variables ***
${email_field}      id=io.qaninja.android.twp:id/etEmail
${password_field}   id=io.qaninja.android.twp:id/etPassword
${submit_button}    id=io.qaninja.android.twp:id/btnSubmit

*** Keywords ***
Login With
  [Arguments]       ${email}            ${password}
  Input Text        ${email_field}      ${email}
  Input Text        ${password_field}   ${password}
  Click Element     ${submit_button}

Go To Login Page
  Go To Main Screen
  Open Hamburguer Menu
  Navigate To Screen          FORMS

  Click Text                  LOGIN
  Wait Until Page Contains    Fala QA, vamos testar o login?