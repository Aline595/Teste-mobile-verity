*** Settings ***
Resource    ../resources/setup.robot
Resource    ../resources/pages/webview_page.robot
Suite Setup  Abrir App
Suite Teardown  Close Application

*** Test Cases ***
Validar pagina de webview
    Acessar menu webview
    Validar Pagina
