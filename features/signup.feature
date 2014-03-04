Feature: Sign up page
  Scenario: Sign up for an account
    When I am on the /signup page
    And I fill in the "Email" field with a unique email
    And I fill in the "Password" field with a random string
    And I fill in the "Password Confirmation" field with the same string
    And I click the "Sign up" button
    Then I see the homepage
    And I see the "Signed up!" notice
