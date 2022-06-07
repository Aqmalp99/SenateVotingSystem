Feature: Commissioner can order a recount
  As an electoral commissioner
  I want to have the power to order a recount
  So that the senate can elect a clear winner

  Background: Candidates currently in the database
    Given The following candidates are in the database:
      | first_name | surname   | party                  | order | excluded |
      | Kevin      | Rudd      | Australian Labor Party | 3     | false    |
      | Scott      | Morrison  | Liberal National Party | 2     | false    |
      | Penny      | Wong      | Australian Labor Party | 1     | false    |
      | Barnaby    | Joyce     | The Nationals          | 4     | true     |

  Scenario: Navigation button redirects to recount page
    Given I am on the "admin" "voting-results" page
    When I find and select "Recount"
    Then I should be on the "admin" "recount" page

  Scenario: Recount page displays candidates in a table for exclusion
    Given I am on the "admin" "recount" page
    Then I should see "Penny Wong" within the "table"
    And I should see "Australian Labor Party"

  Scenario: Recount form submits correctly and redirects to dashboard
    Given I am on the "admin" "recount" page
    When I check the first checkbox
    And I click "Confirm Recount"
    Then I should be on the "admin" "voting-results" page

  Scenario: Checkbox should be selected if candidate is excluded
    Given I am on the "admin" "recount" page
    Then The checkbox for "4" should be checked
