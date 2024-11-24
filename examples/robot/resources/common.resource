*** Settings ***
Library  myLibFile.py  

*** keywords ***
Afficher la Variable
    [Arguments]  ${texte}
    Log  ${texte}

Lecture du fichier
    ${resultat}=  read
    RETURN  ${resultat}
    
Ecriture du fichier a
    [Arguments]   ${valeur}
    Write  ${valeur}

Verifier que ${value} vaut ${expected} 
    should be equal as integers  ${value}  ${expected}