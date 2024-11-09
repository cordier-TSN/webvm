*** Settings ***
resource  common.resource

*** Variables ***
${texte}   'Bonjour !'

*** Test cases ***
0001 Premier cas de Test
    Afficher la Variable  ${texte} 

