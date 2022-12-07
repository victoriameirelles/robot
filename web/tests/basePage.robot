
*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}              https://blogdoagi.com.br/

*** Keywords ***
Inicia sessão
    Open Browser                    ${url}      chrome

Encerra sessão
    Capture Page Screenshot
    Close Browser