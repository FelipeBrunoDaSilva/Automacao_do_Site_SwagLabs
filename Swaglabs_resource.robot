*** Settings ***
Library    SeleniumLibrary
Library    XML

*** Variables ***
${URL}                  https://www.saucedemo.com
${USERNAME_LOGIN}       standard_user
${USERNAME_PASSOWORD}    secret_sauce

    

*** Keywords ***
 Abrir o navegador
     Open Browser     browser=chrome
     Maximize Browser Window 


fechar navegador  
    Close Browser   

 Dado que esteja na home page do site 
     Go To    url= ${URL}

Quando preencher os dados de login e senha
    Input Text    locator=//input[contains(@placeholder,'Username')]            text=${Username_LOGIN}  
    Input Password    locator=//input[contains(@placeholder,'Password')]    password=${USERNAME_PASSOWORD}  

Então login realzado com sucesso
    Click Button    locator=//input[contains(@type,'submit')]

E escolher o produto desejado 
    Click Button    locator=//button[contains(@data-test,'add-to-cart-sauce-labs-backpack')]

E adicionado com sucesso 
    Click Element    locator=//a[contains(@class,'shopping_cart_link')]  

E adicionar todos os produtos
    Click Element    locator=//button[contains(@data-test,'add-to-cart-sauce-labs-backpack')]
    Click Element    locator=//button[contains(@data-test,'add-to-cart-sauce-labs-bike-light')]
    Click Element    locator=//button[contains(@data-test,'add-to-cart-sauce-labs-bolt-t-shirt')] 
    Click Element    locator=//button[contains(@data-test,'add-to-cart-sauce-labs-fleece-jacket')]  
    Click Element    locator=//button[contains(@data-test,'add-to-cart-sauce-labs-onesie')]
    Click Element    locator=//button[contains(@data-test,'add-to-cart-test.allthethings()-t-shirt-(red)')]
    
E produtos adicionado com sucesso
    Click Element    locator=//a[contains(@class,'shopping_cart_link')]  
