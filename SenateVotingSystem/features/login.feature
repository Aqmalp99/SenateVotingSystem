Feature: Login as voter or admin

  Background: Repeated action
    Given I am on the login page

  Scenario: Go to voter homepage
    When I click "Login as voter" button
    Then I should be taken to voter homepage

  Scenario: Go to election commissioner homepage
    When I click "Login as electoral commissioner" button
    Then I should be taken to electoral commissioner homepage
