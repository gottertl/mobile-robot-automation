*** Settings ***
Documentation       This is the page for Main screen actions

*** Variables ***
${toolbar_title}    id=io.qaninja.android.twp:id/toolbarTitle

*** Keywords ***
Navigate To Screen
  [Arguments]       ${screen_name}
  Click Text        ${screen_name}

  Wait Until Element Is Visible   ${toolbar_title}
  Element Text Should Be          ${toolbar_title}     ${screen_name}


Open Hamburguer Menu
  Click Element                   xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
  Wait Until Element Is Visible   id=io.qaninja.android.twp:id/navView
