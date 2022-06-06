Feature: Commissioner can order a recount
  As an electoral commissioner
  I want to have the power to order a recount
  So that the senate can elect a clear winner

  Scenario: Navigation button redirects to recount page
    Given I am on the "admin" "voting-results" page
    When I find and select "Recount"
    Then I should be on the "admin" "recount" page
