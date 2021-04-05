# Simple feature file for login tests on saucelabs demo
@Login
Feature: Saucelabs demo login feature

  @Valid
  Scenario Outline: Test login with valid credentials
    Given I navigate to the login page
    When I enter username <username> and password <password>
    And I click login button
    Then I am navigated to the inventory page

    Examples: 
      | username      | password                 |
      | standard_user | qcu24s4901FyWDTwXGr6XA== |

  @Invalid
  Scenario Outline: Test login with invalid password
    Given I navigate to the login page
    When I enter username <username> and password <password>
    And I click login button
    Then I am shown a login error

    Examples: 
      | username      | password     |
      | standard_user | 9nJBMkew2Wc= |
