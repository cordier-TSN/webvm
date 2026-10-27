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
   ${login}=  Evaluate  random.sample(range(0,9999),1)   random
   ${login}=   get from list   ${login}  0
   ${value}=  Evaluate  random.sample(range(0,9999),1)   random
   ${value}=   get from list   ${value}  0
   @{test}=  Create list   login:${login} mot de passe:${value}
   append to list   ${test}    ${login}
   append to list   ${test}    ${value}
   append to list   ${test}    bla bla
   append to list   ${test}    exig_${value}
   run keyword if  '${username}'=='${EMPTY}'   append to csv file    data_driver.csv   ${test}   delimiter=;
