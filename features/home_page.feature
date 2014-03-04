Feature: Home page

  Scenario: Viewing application's home page
    When I am on the homepage
    Then I see the login form
    And I see the "Sign up" link

  Scenario: Nagivating to the signup page
    When I am on the homepage
    And I follow the "Sign up" link
    Then I see the signup page
