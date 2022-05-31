Feature: Voter home page

  Background: Repeated action
    Given I am on the voter home page

  Scenario: Expect voting information
    Then I should see "Voting instructions" information box

  Scenario: Should see a "Vote now" button
    Then I should see a "Vote now" button

  Scenario: Clicking on the vote now button should take me to the voting ballot page
    When I click "Vote now" button
    Then I should be taken to voting ballot page