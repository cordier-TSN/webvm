*** Settings ***


*** Variables ***
${texte}   'Bonjour !'

*** Test cases ***
0001 Premier cas de Test
    [Documentation]  test de démo
    [tags]  NonReg  Produit01
    Afficher la Variable  ${texte} 
