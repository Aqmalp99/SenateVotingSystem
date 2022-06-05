Feature: Voter homepage

  Background: Repeated action
    Given The following voters are in the database:
      | id  | first_name  | last_name | has_voted |
      |  1  | "Haard"     | "Shah"    | false     |
      |  2  | "Thomas"    | "Wilson"  | false     |
      |  3  | "Shae"      | "Haggis"  | false     |
      |  4  | "John"      | "Smith"   | true      |

  Scenario: Expect voting information
    Given I am on the voter homepage for user "1"
    Then I should see "Voting instructions" information box

  Scenario: Should see a "Vote now" button
    Given I am on the voter homepage for user "1"
    Then I should see a "Vote now" button

  Scenario: Should not see a "Vote now" button
    Given I am on the voter homepage for user "4"
    Then I should see "Sorry, you have already voted." text

  Scenario: Clicking on the vote now button should take me to the voting ballot page
    Given I am on the voter homepage for user "1"
    When I click "Vote now" button
    Then I should be taken to voting ballot page