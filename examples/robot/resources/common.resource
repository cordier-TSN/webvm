*** Settings ***
Library  ../libraries/Modbus.py  


*** keywords ***
Afficher la Variable
    [Arguments]  ${texte}
    Log  ${texte}

Lecture du registre
    [Arguments]  ${register} 
    ${result}=  read  ${register}
    set test Variable  ${registre}  ${result}

Ecriture du registre
    [Arguments]  ${registre}  ${valeur}
    Write  ${registre}  ${valeur}
    