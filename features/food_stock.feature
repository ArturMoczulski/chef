Feature: Stock

  Background:
    Given I sign in

  Scenario:
    When I am on the food_stocks page
    And I click the "Add food" link
    And I fill in the form
    Then I am on the food_stock page
    And I see the food stock in my list
