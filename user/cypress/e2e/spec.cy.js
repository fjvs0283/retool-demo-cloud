describe("User Management", () => {
  // Wait for the login to complete and the app to be loaded
  beforeEach(() => {
    cy.login(Cypress.env("CYPRESS_USERNAME"), Cypress.env("CYPRESS_PASSWORD"));
    cy.visit(
      "https://franciscodev.retool.com/apps/d118a682-72c5-11ef-be14-93400bf0888e/Testing/Testing%20Demo"
    );

    // Example of intercepting network requests to wait for them
    cy.intercept('POST', 'https://p.retool.com/v2/p').as('apiCall');
    
    // Wait for the API response to ensure the page is fully loaded
    cy.wait('@apiCall');
  });

  it("ensures the application home page is loaded", () => {
    // Wait until the element is visible to ensure the page is loaded properly
    cy.get('[data-testid="RetoolGrid:button1"]').should("be.visible");
  });

  it("clicks the button and displays the correct text", () => {
    // Ensure the button is visible before clicking
    cy.get('[data-testid="RetoolGrid:button1"]')
      .should("be.visible")
      .contains("Click me!")
      .click();

    // Ensure the text is visible and contains the expected content
    cy.get('[data-testid="RetoolGrid:text1"]')
      .should("be.visible")
      .should("contain", "Hello World");
  });
});
