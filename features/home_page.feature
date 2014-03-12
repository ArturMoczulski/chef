Feature: Home page

  Scenario: Viewing application's home page
    When I am on the homepage
    Then I see the login form
    And I see the "Sign up" link

  Scenario: Nagivating to the signup page
    When I am on the homepage
    And I follow the "Sign up" link
    Then I see the signup page

  Scenario: Signing in
    Given a "tester@example.com" user exists with password "123"
    When I am on the homepage
    And I fill in the login form with email "tester@example.com" and password "123"
    Then I see the homepage
    And I see the welcome message
    But I do not see the login form

