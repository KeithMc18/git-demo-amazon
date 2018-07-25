*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SIGHIN_MAIN_HEADING} =  xpath=//h1
*** Keywords ***
Verify Page Loaded
    Page Should Contain Element  ${SIGHIN_MAIN_HEADING}
    Element Text Should Be  ${SIGHIN_MAIN_HEADING}  Sign in

Login With Valid Credentials
    [Arguments]  ${Username}  ${Password}
    Fill "Email" Field  ${Username}
    Fill "Password" Field  ${Password}
    Click "Sigh In" Button

Fill Email Field
    [Arguments]  ${Username}
    Log  Fill Email Field with ${Username}

Fill Password Field
    [Arguments]  ${Password}
    Log  Fill Password Field with ${Password}

Click Sigh In Button
    Log  Clicking Submit Button


