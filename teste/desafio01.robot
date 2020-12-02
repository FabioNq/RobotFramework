*** Settings ***
Library  SeleniumLibrary

*** Variable ***
       
${URL}            http://google.com.br 


*** Test Cases ***
Abrir Browser 
    Open Browser     ${URL}  
Pesquisar "robot framework" e acessar
    Input text       name:q    robot framework 
    Press Keys       name:q    ENTER
Aguardar e procurar pelo terceiro resultado    
    sleep            3s
    Click Link       partial link:Automatizando dois cenários de teste para web com Robot ...
    sleep            4s
verificar se é o link correto
    sleep            3s
    Get WebElement   id:4033   
    Close Browser 
  
   





