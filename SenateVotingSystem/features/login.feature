Feature: Login as voter or admin

  Background: Repeated action
    Given I am on the login page
    And The following voters are in the database:
    | id  | first_name  | last_name | has_voted |
    |  1  | "Haard"     | "Shah"    | false     |
    |  2  | "Thomas"    | "Wilson"  | false     |
    |  3  | "Shae"      | "Haggis"  | false     |
    |  4  | "John"      | "Smith"   | true      |

  Scenario: Go to voter login page
    When I click "Login as voter" button
    Then I should be taken to voter login page

  Scenario: Login with User ID where that voter has not voted
    When I am on the voter login page
    And In the "userID" field, I type in "1"
    And I click "Login" button
    And I am taken to voter homepage for user "1"
    Then I should see "Vote now" button

  Scenario: Login with User ID where that voter has voted
    When I am on the voter login page
    And In the "userID" field, I type in "4"
    And I click "Login" button
    And I am taken to voter homepage for user "4"
    Then I should see "Sorry, you have already voted." text

  Scenario: Login with User ID where that does not exist
    When I am on the voter login page
    And In the "userID" field, I type in "5"
    And I click "Login" button
    Then I should see "Login Failed" text

  Scenario: Go to election commissioner homepage
    When I click "Login as electoral commissioner" button
    Then I should be taken to electoral commissioner homepage
