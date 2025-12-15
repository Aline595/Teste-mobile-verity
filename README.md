# Teste Mobile Verity 

Projeto de teste utilizando  **Robot Framework + AppiumLibrary** para automação de testes mobile.


## 🧱 Stack utilizada (OBRIGATÓRIA)

| Ferramenta           | Versão |
| -------------------- | ------ |
| Python               | 3.11.x |
| Robot Framework      | 6.1.1  |
| AppiumLibrary        | 2.1.0  |
| Appium-Python-Client | 2.11.1 |
| Selenium             | 4.9.0  |
| Appium Server        | 2.x    |
| Node.js              | LTS    |


## Como executar
## 🔧 1. Instalação do Python

* Instale o **Python 3.11**

Verifique:

```bash
python --version
```

---

## 🔧 2. Criar ambiente virtual (RECOMENDADO)

```bash
python -m venv venv
```

Ativar:

**Windows**

```bash
venv\Scripts\activate
```

---

## 📦 3. Instalar dependências

Execute os comandos abaixo

```bash
pip install -r requirements.txt
```

## 📱 4. Instalar dependências mobile

### Node.js

* Instale Node.js LTS

Verifique:

```bash
node -v
npm -v
```

### Appium Server

```bash
npm install -g appium
appium --version
```

Instalar driver Android:

```bash
appium driver install uiautomator2
```

---

## 🤖 5. Configurar Android

### Android Studio

* Instale o Android Studio
* Configure o **Android SDK**
* Crie um **Emulador** ou conecte um **celular físico**

Verifique conexão:

```bash
adb devices
```

## ▶️ 6. Executar os testes

Inicie o Appium Server:

```bash
appium
```

Em outro terminal:

```bash
python -m robot -d results tests
```

---

## 📸 8. Evidências (logs e prints)

Após a execução:

* `results/log.html`
* `results/report.html`
* `results/output.xml`
