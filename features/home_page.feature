Feature: Home page

  Scenario: View application's home page
    When I am on the homepage
    Then I see the login form
    And I see the "Sign up" link

  Scenario: Navigate to the signup page
    When I am on the homepage
    And I follow the "Sign up" link
    Then I see the signup page

  Scenario: Sign in
    Given I sign in
    Then I see the homepage
    And I see the welcome message
    But I do not see the login form

  Scenario: Invalid sign in
    When I am on the homepage
    And I fill in the login form with email "nonexistent@example.com" and password "123"
    Then I see the homepage
    And I see the "Incorrect email or password. Please try again." message
    And I see the login form
