#eltonTome
#OBS: Tive problemas na parte de clicar no botão do tamanho do produto onde tentei colocar o id, class e nada deu certo, por conta disso eu segui fazendo os códigos mesmo sem conseguir testar o restante.

*** Variables ***
${SITE}                   https://demo.spreecommerce.org
${NAVEGADOR}              Chrome
${BOTAO_MEN}              id=main-nav-bar
${BOTAO_PRODUTO}          id=product_12
${BOTAO_COR}              class=color-select
${BOTAO_TAMANHO}          class=m-1 select-label
${BOTAO_ADD_CARRINHO}     id=add-to-cart-button
${BOTAO_CHECKOUT}         class=col-12 col-lg-8
${SIGNUP}                 class=btn btn-block btn-outline-primary spree-btn
${CAMPO_EMAIL}            id=spree_user_email
${EMAIL}                  eltinhotm@gmail.compra
${CAMPO_PASSWORD}         id=spree_user_password
${PASSWORD}               elton1234
${CAMPO_PASSWORD_CONF}    id=spree_user_password_confirmation
${PASSWORD_CONF}          elton1234
${BOTAO_SIGNUP}           class=btn btn-primary btn-block spree-btn mb-5
${CAMPO_FIRST_NAME}       id=order_bill_address_attributes_firstname
${FIRST_NAME}             Elton
${CAMPO_LAST_NAME}        id=order_bill_address_attributes_lastname
${CAMPO_LAST_NAME}        Tome
${CAMPO_ANDDRESS}         id=order_bill_address_attributes_address1
${ANDDRESS}               Praça Maria José de Jesus 369
${CAMPO_CITY}             id=order_bill_address_attributes_city
${CITY}                   Bahia
${CAMPO_ZIP_CODE}         id=order_bill_address_attributes_zipcode
${CODE}                   14013
${CAMPO_PHONE}            id=order_bill_address_attributes_phone
${PHONE}                  1234567890
${BOTAO_SALVE_CONTINUE}   class=btn btn-primary text-uppercase font-weight-bold w-100 checkout-content-save-continue-button
${CAMPO_CARD_NUMBER}      id=card_number
${CARD_NUMBER}            5324 1637 6080 1989
${CAMPO_MES_ANO}          id=card_expiry
${MES_ANO}                10/2023
${CAMPO_CVV}              id=card_code
${CVV}                    593



*** Keywords ***

Acessar a loja
  
  Open Browser            ${SITE}   ${NAVEGADOR}
  Maximize Browser Window

Selecionar categoria
  
  Click Element           ${BOTAO_MEN}
  Sleep   4

Selecionar produto
  
  Click Element           ${BOTAO_PRODUTO}
  Sleep   4

Selecionar um tamanho e cor
  
  Click Element           ${BOTAO_COR}
  Sleep   4
  Click Element           ${BOTAO_TAMANHO}
  Sleep   4

Adicionar ao carrinho de compras
  
  Click Element           ${BOTAO_ADD_CARRINHO}
  Sleep   4
  Click Element           $(BOTAO_CHECKOUT)
  Sleep   4

Login
  
  Click Element           ${SIGNUP}
  Sleep   4
  Input Text              ${CAMPO_EMAIL}            ${EMAIL}
  Sleep   4
  Input Text              ${CAMPO_PASSWORD}         ${PASSWORD}
  Sleep   4
  Input Text              ${CAMPO_PASSWORD_CONF}    ${PASSWORD_CONF}
  Sleep   4
  Click Element           ${BOTAO_SIGNUP}

Preencher dados de billing address e clicar em Save and Continue
  
  Input Text              ${CAMPO_FIRST_NAME}    ${FIRST_NAME} 
  Sleep   4
  Input Text              ${CAMPO_LAST_NAME}     ${LAST_NAME}
  Sleep   4
  Input Text              ${CAMPO_ANDDRESS}      ${ANDDRESS}
  Sleep
  Input Text              ${CAMPO_CITY}          ${CITY}
  Sleep   4
  Input Text              ${CAMPO_ZIP_CODE}      ${CODE} 
  Sleep   4
  Input Text              ${CAMPO_PHONE}         ${PHONE}
  Sleep   4
  Click Element           ${BOTAO_SALVE_CONTINUE}
  Sleep   4

Selecionar frete e clicar em Save and Continue

  Click Element           ${BOTAO_SALVE_CONTINUE}
  Sleep   4

Preencher dados do cartão de crédito, clicar em “Save and Continue”

  Input Text              ${CAMPO_CARD_NUMBER}    ${CARD_NUMBER}                   
  Sleep   4
  Input Text              ${CAMPO_MES_ANO}        ${MES_ANO}
  Sleep   4
  Input Text              ${CAMPO_CVV}            ${CVV}
  Sleep   4
  Click Element           ${BOTAO_SALVE_CONTINUE}
  Sleep   4

Checar informações e clicar em “place order”

  Click Element           ${BOTAO_SALVE_CONTINUE}
  Sleep   4

Uma mensagem “Bogus Gateway: Forced failure” deve aparecer, encerrando  o processo. 




