** Settings **
Library  SeleniumLibrary

** Variables **
${input_produto}            id:twotabsearchtextbox
${click_pesquisar}          id:nav-search-submit-button
${click_selecionarproduto}  css:[class="a-size-base-plus a-color-base a-text-normal"]
${click_adicionarcarrinho}  id=add-to-cart-button
${click_validarcarrinho}    //a[contains(text(),'Ir para o carrinho')]
${click_adicionarqtd}       //option[@value="3"]


** Keywords **
Abrir Site
    Open Browser                https://www.amazon.com.br/  chrome
    Maximize Browser Window

Pesquisar produto
    Input Text                      ${input_produto}        Alexa
    Click Element                   ${click_pesquisar} 
#   Sleep                       2s
#   Capture Page Screenshot

Selecionar produto
    Wait until element is visible   ${click_selecionarproduto}
    Click Element                   ${click_selecionarproduto}

Adicionar ao carrinho
    Wait until element is visible   ${click_adicionarcarrinho}
    Click Button                    ${click_adicionarcarrinho}

Validar se o produto foi adicionado
    Wait until element is visible   xpath=${click_validarcarrinho}
    Click Element                   xpath=${click_validarcarrinho}

Selecionar quantidade de 3
    Wait until element is visible   ${click_adicionarqtd}
    Click Element                   ${click_adicionarqtd}

Fechar Browser
    Close Browser

** Test Cases **
Cenário 1: Acessando o site da Amazon e adicionando produto no carrinho
    Abrir Site
    Pesquisar produto
    Selecionar produto
    Adicionar ao carrinho
    Validar se o produto foi adicionado
    Fechar Browser
Cenário 2: Acessando o site da Amazon e adicionando 3 produtos no carrinho
    Abrir Site
    Pesquisar produto
    Selecionar produto
    Selecionar quantidade de 3
    Adicionar ao carrinho
    Validar se o produto foi adicionado
    Fechar Browser
