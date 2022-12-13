** Settings **
Library  SeleniumLibrary

** Variables **
${click_criarconta}     //a[contains(text(),'Comece aqui.')]
${name}                 ap_customer_name
${email}                ap_email
${senha}                ap_password
${senha2}               ap_password_check

** Keywords **
Abrir Site
    Open Browser    https://www.amazon.com.br/  chrome

Botão para criar conta
#    Sleep                       5s
    Click Element    xpath=${click_criarconta}
Inserir nome
    Input Text      ${name}     Victória Meirelles
Inserir e-mail
    Input Text      ${email}    victoria.meirelles@outlook.com
Inserir senha
    Input Password  ${senha}    12345
    Input Password  ${senha2}   12345
Fechar Browser
    Close Browser

** Test Cases **
Cenário 1: Acessando o site da Amazon e inserindo dados pra cadastro
    Abrir Site
    Botão para criar conta
    Inserir nome
    Inserir e-mail
    Inserir senha
    Fechar Browser