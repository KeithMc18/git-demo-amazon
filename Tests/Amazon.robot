*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  Resources/Common.robot  # for Setup & Teardown
Resource  Resources/AmazonApp.robot  # for lower level keywords in test cases
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${BROWSER} =  firefox
${START_URL} =  https://www.amazon.com
${SEARCH_TERM} =  scrabble board game
${LOGIN_EMAIL} =  user@example.com
${LOGIN_PASSWORD} =  Password123

*** Test Cases ***
#Should be able to login
#    [Tags]  Login
#    AmazonApp.Login  ${LOGIN_EMAIL}  ${LOGIN_PASSWORD}

Logged out user can search for products
    [Tags]  Current
    AmazonApp.Search for Products

Logged out user can view a product
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results

Logged out user can add product to cart
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart

Logged out user must sign in to check out
    [Tags]  Failed
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart
    AmazonApp.Begin Checkout
