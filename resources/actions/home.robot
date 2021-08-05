*** Settings ***
Documentation       This is the page for Home screen actions


*** Keywords ***
Go To Main Screen
  Wait Until Page Contains        COMEÇAR
  Click Text                      COMEÇAR
  Wait Until Element Is Visible   xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]