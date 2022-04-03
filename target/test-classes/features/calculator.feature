Feature: This feature is used to design calculator for adding and substracting

  Scenario: Add the numbers
    Given I have a calculator
    When I add 4 and 5
    Then I should get the result as 9

  Scenario: Subtract the numbers
    Given I have a calculator
    When I subtract 6 and 3
    Then I should get the result as 3

  Scenario Outline: Subtract the numbers
    Given I have a calculator
    When I subtract <num1> and <num2>
    Then I should get the result as <result>

    Examples: 
      | num1 | num2 | result |
      |    5 |    2 |      3 |
      |   10 |    5 |      5 |
      |    6 |    3 |      3 |

  Scenario Outline: Addition of the numbers
    Given I have a calculator
    When I add <num1> and <num2>
    Then I should get the result as <result>

    Examples: 
      | num1 | num2 | result |
      |    5 |    2 |      7 |
      |   10 |    5 |     15 |
      |    6 |    3 |      9 |

  Scenario: Add multiple numbers using cucumber data table
    Given I have a calculator
    When I add below numbers
      | 4 |
      | 5 |
      | 7 |
      | 8 |
    Then I should get the result as 24

  Scenario: Add multiple numbers using cucumber list
    Given I have a calculator
    When I add below numbers using list
      |  4 |
      |  5 |
      |  7 |
      |  8 |
      | 10 |
    Then I should get the result as 34

  Scenario: To calculate the total bill of the order
    Given I have a calculator
    When I order below items
      | coffee       | 23 |
      | tea          | 27 |
      | garlic bread | 30 |
    Then I should get the result as 80

  Scenario: To calculate the total bill of the order using quantity
    Given I have a calculator
    When I order below items and quantity
      | coffee       | 1 | 10 |
      | tea          | 2 | 20 |
      | garlic bread | 3 | 30 |
    Then I should get the result as 140
