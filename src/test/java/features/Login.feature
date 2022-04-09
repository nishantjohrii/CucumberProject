@F_Login
Feature: This feature would be used to design the Login page of the application

  Background: Open the application
    Given I have opened the application in browser

  @Sanity
  Scenario: Validate the successful login
    When I click on the Login link
    And I enter username
    And I enter password
    And I click on the login button
    Then I should be landed on the home page

  @Regression @Rapid
  Scenario: Validate the successful login using test data
    When I click on the Login link
    And I enter username "abc@gmail.com"
    And I enter password "Hahh@1234"
    And I click on the login button
    Then I should be landed on the home page

  @Regression
  Scenario Outline: Validate the successful login using multiple test data
    When I click on the Login link
    And I enter username "<UserName>"
    And I enter password "<Password>"
    And I click on the login button
    Then I should be landed on the home page

    Examples: 
      | UserName        | Password  |
      | abc@gmail.com   | Hahh@1234 |
      | nishant@xyz.com | Hahh@1234 |

  Scenario: Validate the negative login using test data
    When I click on the Login link
    And I enter username "abc@gmail.com"
    And I enter password "Hahh@1234"
    And I click on the login button
    And I share get the error as "The email or password you have entered is invalid."
