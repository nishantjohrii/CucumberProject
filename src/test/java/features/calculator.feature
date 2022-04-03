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
      |   10 |    5 |      15 |
      |    6 |    3 |      9 |
