*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Product Added
    Wait Until Page Contains  Sign in

Proceed to Checkout
    Click Link  id=hlb-ptc-btn-native
