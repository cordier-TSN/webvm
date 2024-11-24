*** Settings ***
resource  common.resource


*** Variables ***
${texte}   'Bonjour !'

*** Test cases ***
0001 Premier cas de Test
    [Documentation]  test de démo
    [tags]  NonReg  Produit01
    Afficher la Variable  ${texte} 
    Ecriture du fichier a  ${texte}
    ${result}=  Lecture du fichier
    Afficher la Variable  ${result}
    Verifier que ${result} vaut ${texte}