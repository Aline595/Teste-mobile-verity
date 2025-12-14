*** Variables ***
${MENU_LOGIN_ID}   accessibility_id=Login
${MENU_SIGN_IN_ID}   xpath=//*[@text="Sign up"]
${CAMPO_EMAIL}  accessibility_id=input-email
${CAMPO_SENHA}  accessibility_id=input-password
${CAMPO_SENHA_DOIS}  accessibility_id=input-repeat-password
${BTN_SIGN}     xpath=//*[@text="SIGN UP"]
${BTN_OK}   xpath=//*[@text="OK"]
${VALIDACAO_EMAIL}  xpath=//*[@text="Please enter a valid email address"]
${VALIDACAO_SENHA}  xpath=//*[@text="Please enter at least 8 characters"]
${VALIDACAO_SENHA_CONFIRMA}  xpath=//*[@text="Please enter the same password"]
${VALIDACAO_SUCESSO}   xpath=//*[@text="You successfully signed up!"]

*** Keywords ***    
Preencher formulario
    [Arguments]    ${email}  ${senha}  ${senha_dois}
    Input Text  ${CAMPO_EMAIL}   ${email}
    Input Text  ${CAMPO_SENHA}  ${senha}
    Input Text   ${CAMPO_SENHA_DOIS}  ${senha_dois}
    Click Element   ${BTN_SIGN}

Validacao email
    Wait Until Element Is Visible     ${VALIDACAO_EMAIL}
   
Validacao senha
    Wait Until Element Is Visible    ${VALIDACAO_SENHA}

Validacao de sucesso
    Wait Until Element Is Visible    ${VALIDACAO_SUCESSO}
    Click Element   ${BTN_OK}

Validacao confirmacao da senha
    Wait Until Element Is Visible    ${VALIDACAO_SENHA_CONFIRMA}

Acessar menu cadastro de usuario
    Wait Until Element Is Visible    ${MENU_LOGIN_ID}
    Click Element  ${MENU_LOGIN_ID}
    Click Element  ${MENU_SIGN_IN_ID}
