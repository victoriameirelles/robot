*** Settings ***
Resource        basePage.robot

Test Setup      Inicia sessão 
Test Teardown   Encerra sessão

*** Test Cases ***
*** Keywords ***
Preencher Pesquisa
    [Arguments]                     ${uname}       ${pass}

    Click Element                   css:button[name='search-open']
    Input Text                      css:input[name=search-field]        'finanças'
    Click Element                   css:button[name='search-submit']
