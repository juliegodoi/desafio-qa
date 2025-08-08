# Desafio QA

Este projeto foi desenvolvido como teste técnico para a **Lacrei Saúde**, focando em testes de qualidade (QA) do sistema de pacientes em ambiente de staging.

## 📋 Sobre o Projeto

O projeto consiste em uma suíte completa de testes para o sistema [paciente-staging.lacreisaude.com.br](https://paciente-staging.lacreisaude.com.br/), abrangendo:

### Testes Manuais
- **Cadastro de usuário**
- **Pós-cadastro **
- **Busca por profissionais**
- **Contato com profissionais**
- **Edição de perfil**
- **Redefinição de senha**

### Testes Automatizados
- **Fluxo de cadastro** automatizado
- Desenvolvido com **Cypress** + **Cucumber**
- **CI/CD** implementado com **GitHub Actions**

## 📄 Documentação Completa

Todos os **casos de teste**, **reports de bugs** e **sugestões de melhoria** estão documentados no Notion:

🔗 [Documentação Completa - Desafio QA Lacrei Saúde](https://www.notion.so/Desafio-QA-Lacrei-Sa-de-08-25-2458e3cab60c80349013e6cb7b4fa8b1?source=copy_link)

## 🚀 Como Executar o Projeto

### Pré-requisitos

- **Node.js**
- **npm**
- **Git**

### 1. Clonar o Repositório
```bash
git clone "https://github.com/juliegodoi/desafio-qa"
```

### 2. Instalar Dependências
```bash
npm install
```

### 3. Executar os Testes
```bash
npx cypress open
```
ou
```bash
npx cypress run
```
##  🔄 CI/CD - GitHub Actions
O projeto possui pipeline automatizado.
Para visualizar a execução dos testes, acesse a aba "Actions" no repositório GitHub.
