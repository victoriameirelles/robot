** Settings **
Library  SeleniumLibrary

** Variables **
${input_produto}            id:twotabsearchtextbox
${click_pesquisar}          id:nav-search-submit-button
${click_selecionarproduto}  //div[5]/div/div/div/div/div[2]/div/h2/a/span
${click_adicionarcarrinho}  id=add-to-cart-button
${click_validarcarrinho}    //a[contains(text(),'Ir para o carrinho')]
# ${click_adicionarqtd}       //select[@id="quantity"]    3


** Keywords **
Abrir Site
    Open Browser  https://www.amazon.com.br/  chrome

Pesquisar produto
    Input Text                  ${input_produto}    Alexa
    Click Element               ${click_pesquisar} 
#    Sleep           2s
#    Capture Page Screenshot

Selecionar produto
    Click Element               xpath=${click_selecionarproduto}

Adicionar ao carrinho
    Click Button                ${click_adicionarcarrinho}

Validar se o produto foi adicionado
    Click Element                xpath=${click_validarcarrinho}

# Selecionar quantidade de 3
#     Select From List By Label   ${click_adicionarqtd}

** Test Cases **
Cenário 1: Acessando o site da Amazon e adicionando produto no carrinho
    Abrir Site
    Pesquisar produto
    Selecionar produto
    Adicionar ao carrinho
    Validar se o produto foi adicionado
# Cenário 1: Acessando o site da Amazon e adicionando 3 produtos no carrinho
#     Abrir Site
#     Pesquisar produto
#     Selecionar produto
#     Selecionar quantidade de 3
#     Adicionar ao carrinho
#     Validar se o produto foi adicionado

