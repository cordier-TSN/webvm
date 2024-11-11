*** Settings ***
Library  ../libraries/Modbus.py  


*** keywords ***
Afficher la Variable
    [Arguments]  ${texte}
    Log  ${texte}

Lecture du registre
    [Arguments]  ${register} 
    ${resultat}=  read  ${register}
    RETURN  ${resultat}[0]
    
Ecriture du registre
    [Arguments]  ${registre}  ${valeur}
    Write  ${registre}  ${valeur}

Verifier que ${value} vaut ${expected} 
    should be equal as integers  ${value}  ${expected}