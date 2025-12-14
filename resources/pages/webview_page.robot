*** Variables ***
${MENU_WEBVIEW_ID}   accessibility_id=Webview
${VALIDACAO}  class=android.webkit.WebView


*** Keywords ***
Validar Pagina
    Wait Until Element Is Visible    ${VALIDACAO}
    
Acessar menu webview
    Wait Until Element Is Visible    ${MENU_WEBVIEW_ID}
    Click Element  ${MENU_WEBVIEW_ID}
