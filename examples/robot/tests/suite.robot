
*** Settings ***

*** Variables ***
${texte}   'Bonjour !'

*** Test cases ***
0001 Premier cas de Test
    Afficher la Variable  ${texte} 

*** keywords ***
Afficher la Variable
    [Arguments]  ${texte}
    Log  ${texte}