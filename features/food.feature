Feature: Food

  Background:
    Given I sign in

  Scenario:
    When I am on the food page
    And I click the "Add food" link
    And I fill in the form
    Then I am on the food page
    And I see the food in my list
