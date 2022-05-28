Feature: Voter home page

  Background: Repeated action
    Given I am on the voter home page

  Scenario: Expect a welcome text
    Then I should see "Welcome to voting" text

  Scenario: Expect voting information
    Then I should see "How to vote" information box

  Scenario: Should see a "Vote now" button
    Then I should see a "Vote now" button

  Scenario: Clicking on the vote now button should take me to the voting ballot page
    When I click "Vote now" button
    Then I should be taken to voting ballot page