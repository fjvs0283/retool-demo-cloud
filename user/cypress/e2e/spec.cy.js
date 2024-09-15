describe("User Management", () => {
  // Wait for the login to complete and the app to be loaded
  beforeEach(() => {
    cy.login(Cypress.env("CYPRESS_USERNAME"), Cypress.env("CYPRESS_PASSWORD"));
    cy.visit(
      "https://franciscodev.retool.com/apps/d118a682-72c5-11ef-be14-93400bf0888e/Testing/Testing%20Demo"
    );
  });

  it("Test 1: Type in the search input and interact with the table and modal", () => {
    // Ensure the input is visible before interacting
    cy.get('#textInput1--0', { timeout: 10000 }).should('be.visible').type('heat');
    cy.wait(500);

    // Scroll to the right of the table
    cy.get('[data-testid="TableWrapper::ScrollableContainer"]').scrollTo('right');
    cy.wait(500);

    // Click the button in the first row after scrolling
    cy.get('[data-row-index="0"] [role="button"]').should('exist').should('be.visible').click();
    cy.wait(500);

    // Ensure the modal is visible
    cy.get('[data-testid="ViewerPageLayout::modalFrame1"]').should('be.visible');
    cy.wait(500);

    // Click the close button of the modal
    cy.get('[id="modalCloseButton1--0"] [type="button"]').click();
    cy.wait(500);

    // Ensure the modal is no longer visible
    cy.get('[data-testid="ViewerPageLayout::modalFrame1"]').should('not.exist');
    cy.wait(500);

    // Clear the text input
    cy.get('#textInput1--0').clear();

  });

  it("Test 2: Type in the search input and interact with the table and modal", () => {
    // Ensure the input is visible before interacting
    cy.get('#textInput1--0', { timeout: 10000 }).should('be.visible').type('heat');
    cy.wait(500);

    // Scroll to the right of the table
    cy.get('[data-testid="TableWrapper::ScrollableContainer"]').scrollTo('right');
    cy.wait(500);

    // Click the button in the first row after scrolling
    cy.get('[data-row-index="0"] [role="button"]').should('exist').should('be.visible').click();
    cy.wait(500);

    // Ensure the modal is visible
    cy.get('[data-testid="ViewerPageLayout::modalFrame1"]').should('be.visible');
    cy.wait(500);

    // Click the close button of the modal
    cy.get('[id="modalCloseButton1--0"] [type="button"]').click();
    cy.wait(500);

    // Ensure the modal is no longer visible
    cy.get('[data-testid="ViewerPageLayout::modalFrame1"]').should('not.exist');
    cy.wait(500);

    // Clear the text input
    cy.get('#textInput1--0').clear();

  });

  it("Test 3: Type in the search input and interact with the table and modal", () => {
    // Ensure the input is visible before interacting
    cy.get('#textInput1--0', { timeout: 10000 }).should('be.visible').type('heat');
    cy.wait(500);

    // Scroll to the right of the table
    cy.get('[data-testid="TableWrapper::ScrollableContainer"]').scrollTo('right');
    cy.wait(500);

    // Click the button in the first row after scrolling
    cy.get('[data-row-index="0"] [role="button"]').should('exist').should('be.visible').click();
    cy.wait(500);

    // Ensure the modal is visible
    cy.get('[data-testid="ViewerPageLayout::modalFrame1"]').should('be.visible');
    cy.wait(500);

    // Click the close button of the modal
    cy.get('[id="modalCloseButton1--0"] [type="button"]').click();
    cy.wait(500);

    // Ensure the modal is no longer visible
    cy.get('[data-testid="ViewerPageLayout::modalFrame1"]').should('not.exist');
    cy.wait(500);

    // Clear the text input
    cy.get('#textInput1--0').clear();

  });

  
});
