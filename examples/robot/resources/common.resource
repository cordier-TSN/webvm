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
    write  ${valeur}

Verifier que ${value} vaut ${expected} 
    should be equal  ${value}  ${expected}


creation erreur
    Run keyword if  '${isok}' =='False'   genere erreur
    
genere erreur    
    run keyword and expect error  *  Log  'test'