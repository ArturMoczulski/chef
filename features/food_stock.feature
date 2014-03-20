Feature: Stock

  Background:
    Given I sign in
    Given the following organizations exist:
      | name           |
      | Berkeley Farms |
      | Kellogg's      |
      | Nestle         |
    Given the following food exist:
      | name                   | producer       |
      | Cottage Cheese Non-fat | Berkeley Farms |
      | Cottage Cheese Low-fat | Berkeley Farms |
      | Protein Waffles        | Kellogg's      |
      | Nutella, 8oz.          | Nestle         |

  Scenario Outline:
    When I am on the food_stocks page
    And I click the "Add food" link
    And I select "<producer> - <name>" as the food_food_id
    And I fill in the "Quantity" field with "<quantity>"
    Then I am on the food_stocks page
    And I see the "Food stock was successfully created." notice
    And I see "<producer>" - "<name>" x <quantity> in my food stock list

    Examples:
      | producer       | name                   | quantity |
      | Berkeley Farms | Cottage Cheese Non-fat | 1        |
      | Kellogg's      | Protein Waffles        | 3        |
      | Nestle         | Nutella, 8oz.          | 1        |
