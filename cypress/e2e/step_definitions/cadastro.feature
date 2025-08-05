Feature: Cadastro de novo paciente

    Scenario: Cadastro com sucesso
        Given que o usuário acessa a página de cadastro
        When preenche os campos com os dados:
            | nome      | João      |
            | sobrenome | Silva     |
            | email     | aleatorio |
            | senha     | Teste@123 |
        And aceita os termos e confirma ser maior de 18 anos
        And clica no botão de cadastro
        Then deve ver a mensagem "Agradecemos seu interesse em fazer parte da Lacrei Saúde!"

    Scenario: Cadastro com senha inválida
        Given que o usuário acessa a página de cadastro
        When preenche os campos com os dados:
            | nome      | João      |
            | sobrenome | Silva     |
            | email     | aleatorio |
            | senha     | fraca     |
        And aceita os termos e confirma ser maior de 18 anos
        Then o botão de cadastro deve estar desabilitado

    Scenario: Cadastro com e-mail inválido
        Given que o usuário acessa a página de cadastro
        When preenche os campos com os dados:
            | nome      | João       |
            | sobrenome | Silva      |
            | email     | joao.silva |
            | senha     | Teste@123  |
        And aceita os termos e confirma ser maior de 18 anos
        Then o botão de cadastro deve estar desabilitado

    Scenario: Cadastro com e-mails diferentes
        Given que o usuário acessa a página de cadastro
        When preenche os campos com os dados:
            | nome      | João            |
            | sobrenome | Silva           |
            | email     | aleatorio       |
            | email2    | maria@email.com |
            | senha     | Teste@123       |
        And aceita os termos e confirma ser maior de 18 anos
        Then o botão de cadastro deve estar desabilitado

    Scenario: Cadastro com senhas diferentes
        Given que o usuário acessa a página de cadastro
        When preenche os campos com os dados:
            | nome      | João      |
            | sobrenome | Silva     |
            | email     | aleatorio |
            | senha     | Teste@123 |
            | senha2    | Teste@012 |
        And aceita os termos e confirma ser maior de 18 anos
        Then o botão de cadastro deve estar desabilitado

    Scenario: Cadastro com campos vazios
        Given que o usuário acessa a página de cadastro
        Then o botão de cadastro deve estar desabilitado

    Scenario: Cadastro com checkboxes não marcadas
        Given que o usuário acessa a página de cadastro
        When preenche os campos com os dados:
            | nome      | João      |
            | sobrenome | Silva     |
            | email     | aleatorio |
            | senha     | Teste@123 |
        Then o botão de cadastro deve estar desabilitado

    Scenario: Cadastro com e-mail já existente
        Given que o usuário acessa a página de cadastro
        When preenche os campos com os dados:
            | nome      | João                |
            | sobrenome | Silva               |
            | email     | joaosilva@email.com |
            | senha     | Teste@123           |
        And aceita os termos e confirma ser maior de 18 anos
        And clica no botão de cadastro
        Then deve ver o alerta "Já existe um usuário cadastrado com este endereço de e-mail."


