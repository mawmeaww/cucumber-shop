#6410406690 Nonthipat Srisuphan
Feature: Buy products
    As a customer
    I want to buy products

#6410406690 Nonthipat Srisuphan
Background:
    Given the store is ready to service customers
    And a product "Bread" with price 20.50 and stock of 5 exists
    And a product "Jam" with price 80.00 and stock of 10 exists
    And a product "Peanut Butter" with price 50.00 and stock of 20 exists

Scenario: Buy one product
    When I buy "Bread" with quantity 2
    Then total should be 41.00

#6410406690 Nonthipat Srisuphan
Scenario: Buy one product
    When I buy "Peanut Butter" with quantity 2
    Then total should be 100.00
    And stock "Peanut Butter" should be 18

#6410406690 Nonthipat Srisuphan
Scenario: Buy multiple products
    When I buy "Bread" with quantity 2
    And I buy "Jam" with quantity 1
    And I buy "Peanut Butter" with quantity 10
    Then total should be 621.00
    And stock "Bread" should be 3
    And stock "Jam" should be 9
    And stock "Peanut Butter" should be 10
