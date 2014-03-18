Feature: Sign up page
  Scenario: Sign up for an account
    When I am on the /signup page
    And I fill in the "Email" field with a unique email
    And I fill in the "Password" field with a random string
    And I fill in the "Password Confirmation" field with the same string
    And I click the "Sign up" button
    Then I see the homepage
    And I see the "Signed up!" notice

  Scenario: Invalid sign up with no data
    When I am on the /signup page
    And I click the "Sign up" button
    Then I see the signup page
    And I see the "Password can't be blank" validation error
    And I see the "Email can't be blank" validation error

  Scenario: Invalid sign up with duplicate email
    Given a "tester@example.com" user exists with password "123"
    When I am on the /signup page
    And I fill in the "Email" field with "tester@example.com"
    And I click the "Sign up" button
    Then I see the signup page
    And I see the "Email has already been taken" validation error
