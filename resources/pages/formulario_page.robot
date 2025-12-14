*** Variables ***
${MENU_FORM_ID}   accessibility_id=Forms
${VALIDACAO_MENU}   xpath=//*[@text="Form components"]  
${CAMPO_INPUT}  accessibility_id=text-input
${CAMPO_INPUT_RESULT}  accessibility_id=input-text-result
${FLAG_SWITCH}  accessibility_id=switch
${FLAG_SWITCH_TEXTO}  accessibility_id=switch-text
${BTN_ACTIVE}   accessibility_id=button-Active
${VALIDACAO_BTN_1}  xpath=//*[@text="This button is"]
${VALIDACAO_BTN_2}  xpath=//*[@text="This button is active"]
${BTN_OK}   xpath=//*[@text="OK"]

*** Keywords ***    
Preencher campo input
    [Arguments]    ${texto}
    Input Text  ${CAMPO_INPUT}   ${texto}

Validacao campo input
    [Arguments]    ${texto}
    Element Text Should Be    ${CAMPO_INPUT_RESULT}    ${texto}

Preencher flag switch
    Click Element   ${FLAG_SWITCH}

Validacao flag switch
    [Arguments]    ${texto}
    Element Text Should Be       ${FLAG_SWITCH_TEXTO}  ${texto}

Clicar botao
    Click Element   ${BTN_ACTIVE}

Validacao botao
    Wait Until Element Is Visible    ${VALIDACAO_BTN_1}
    Wait Until Element Is Visible    ${VALIDACAO_BTN_2}
    Click Element   ${BTN_OK}

Acessar menu formulario
    Wait Until Element Is Visible    ${MENU_FORM_ID}
    Click Element  ${MENU_FORM_ID}
    Wait Until Element Is Visible    ${VALIDACAO_MENU}
