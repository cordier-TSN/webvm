*** Settings ***
resource  ../resources/common.resource


*** Variables ***
${texte}   'Bonjour !'

*** Test cases ***
0001 Premier cas de Test
    [Documentation]  test de démo
    [tags]  NonReg  Produit01
    Afficher la Variable  ${texte} 
    Ecriture du fichier a  3
    ${result}=  Lecture du fichier
    Afficher la Variable  ${result}
    Verifier que ${result} vaut ${3}