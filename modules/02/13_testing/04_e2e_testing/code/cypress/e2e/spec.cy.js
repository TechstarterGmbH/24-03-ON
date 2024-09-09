describe('template spec', () => {
  it('passes', () => {
    cy.visit('http://127.0.0.1:8080/')
    cy.get('a[href="#about"]').click()
    cy.url().should('include', '#about')

    cy.get('a[href="#menu"]').click()
    cy.url().should('include', '#menu')
  })
})
