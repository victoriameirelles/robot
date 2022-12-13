*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${lupa}             id:search-open
${pesquisar}        //input[@name='s']
${botao_pesquisar}  //input[@value='Pesquisar']
*** Keywords ***
Abrir site
    Open Browser    https://blogdoagi.com.br/   chrome

Pesquisar
    Click button    ${lupa}
    Input Text      ${pesquisar}        'finanças'
    Click Element   ${botao_pesquisar}

** Test Cases **
Cenário 1: Acessando o site da Agi e pesquisar 
    Abrir Site
    Pesquisar