*** Settings ***
Resource    ../resources/setup.robot
Resource    ../resources/pages/cadastro_user_page.robot
Suite Setup  Abrir App
Suite Teardown  Close Application

*** Test Cases ***
Criar novo usuario com falha
    Acessar menu cadastro de usuario
    Preencher formulario  teste@  teste12  teste
    Validacao email
    Validacao senha
    Validacao confirmacao da senha
    
Criar novo usuario com senhas divergentes
    Acessar menu cadastro de usuario
    Preencher formulario  teste@gmail.com  teste123456*  teste654321*
    Validacao confirmacao da senha

Criar novo usuario com senhas menor de 8 caractes
    Acessar menu cadastro de usuario
    Preencher formulario  teste@gmail.com  teste  teste
    Validacao senha

Criar novo usuario com email invalido
    Acessar menu cadastro de usuario
    Preencher formulario  teste@  teste123456*  teste123456*
    Validacao email

Criar novo usuario com sucesso
    Acessar menu cadastro de usuario
    Preencher formulario  teste@gmail.com  teste@12345*   teste@12345*
    Validacao de sucesso
