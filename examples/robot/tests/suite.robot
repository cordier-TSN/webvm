*** Settings ***
resource  ../resources/common.resource


*** Variables ***
${texte}   'Bonjour !'

*** Test cases ***
0001 Premier cas de Test
    Afficher la Variable  ${texte} 
    Ecriture du registre  ${2}  ${3}
    Lecture du registre  ${2}
    Afficher la Variable  ${Registre}