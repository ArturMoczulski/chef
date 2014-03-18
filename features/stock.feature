Feature: Stock

  Background:
    Given I sign in

  Scenario:
    When I am on the stock page
    And I click the "Add stock" link
    And I fill in the form
    Then I am on the stock page
    And I see the stock in my list
