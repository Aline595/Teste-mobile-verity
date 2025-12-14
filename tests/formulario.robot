*** Settings ***
Resource    ../resources/setup.robot
Resource    ../resources/pages/formulario_page.robot
Suite Setup  Abrir App
Suite Teardown  Close Application

*** Test Cases ***
Preencher formulario 
    Acessar menu formulario
    Preencher campo input  teste
    Validacao campo input  teste
    Preencher flag switch
    Validacao flag switch  Click to turn the switch OFF
    Clicar botao
    Validacao botao

    
    

