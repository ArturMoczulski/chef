Feature: Sign up page
  Scenario: Sign up for an account
    When I am on the /signup page
    And I fill in the "Email" field with unique email
    And I fill in password field with random string
    And I click the "Sign up" button
    Then I see the new user welcome page
