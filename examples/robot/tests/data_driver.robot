*** Settings ***
Library  DataDriver
Library  CSVLibrary
Library   String
Library  Collections
Test Template   Log with User and Password

*** Test Cases ***
Log with User ${username} and Password ${password} Default UserData

*** Keywords ***
Log with User and Password
   [Arguments]  ${username}  ${password}
   Log many    ${username}  ${password}
