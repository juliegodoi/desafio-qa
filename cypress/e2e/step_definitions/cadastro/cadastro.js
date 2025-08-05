import { Given, When, And, Then } from 'cypress-cucumber-preprocessor/steps';

Given("que o usuário acessa a página de cadastro", () => {
    cy.visit("https://paciente-staging.lacreisaude.com.br/cadastro/");
});

function gerarEmailAleatorio() {
    const timestamp = Date.now();
    return `joao${timestamp}@email.com`;
}

When("preenche os campos com os dados:", (dataTable) => {
    const data = dataTable.rowsHash();

    if (data.nome) cy.get('#first_name').clear().type(data.nome);
    if (data.sobrenome) cy.get('#last_name').clear().type(data.sobrenome);

    // Email principal
    const email = data.email === 'aleatorio' ? gerarEmailAleatorio() : data.email;
    if (email) cy.get('#email').clear().type(email);

    // Email confirmação
    const email2 = data.email2 || email;
    if (email2) cy.get('#email2').clear().type(email2);

    // Senha principal
    if (data.senha) cy.get('#password1').clear().type(data.senha);

    // Senha confirmação
    const senha2 = data.senha2 || data.senha;
    if (senha2) cy.get('#password2').clear().type(senha2);
});

And("aceita os termos e confirma ser maior de 18 anos", () => {
    cy.get('input[name="accepted_privacy_document"]').check({ force: true });
    cy.get('input[name="is_18_years_old_or_more"]').check({ force: true });
});

And("clica no botão de cadastro", () => {
    cy.get('.hWtOGw').should('not.be.disabled').click();
});

Then("deve ver a mensagem {string}", (mensagem) => {
    cy.url({ timeout: 15000 }).should("include", "/verificar-email");
    cy.get("p", { timeout: 10000 }).should("contain.text", mensagem);
});

Then("o botão de cadastro deve estar desabilitado", () => {
    cy.get('.hWtOGw').should("be.disabled");
});

Then("deve ver o alerta {string}", (alerta) => {
    cy.get('.hWtOGw').should('not.be.disabled').click();
    cy.get('.eGXggB', { timeout: 10000 }).should("contain.text", alerta);
});
