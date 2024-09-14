// Add Cypress Testing Library commands (https://testing-library.com/docs/cypress-testing-library/intro/)
import "@testing-library/cypress/add-commands";

Cypress.Commands.add("login", (username, password) => {
  cy.session(
    username,
    () => {
      cy.visit("https://franciscodev.retool.com/auth/login"); // Change this to your Retool domain
      cy.findByPlaceholderText("name@company.com").type(username);
      cy.findByPlaceholderText("Password").type(password);
      cy.contains(/^Sign in$/).click();
    },
    {
      validate() {
        cy.document().its("cookie").should("contain", "xsrfToken");
      },
    }
  );
});