Feature: Add a Candidate to the Ballot
  As an electoral commissioner
  I want to add a candidate to the ballot paper
  So that Australia can engage in democratic processes

  Background: Candidates currently in the database
    Given The following candidates are in the database:
      | first_name | surname   | party                  | order |
      | Kevin      | Rudd      | Australian Labor Party | 3     |
      | Scott      | Morrison  | Liberal National Party | 2     |


  Scenario Outline: Submit Candidate Personal Information
    Given I am on the add candidate page
    When I fill in the "candidate_first_name" field with <first_name>
    And I fill in the "candidate_surname" field with <surname>
    And I fill in the "candidate_party" field with <party>
    When I click "Next"
    Then I should see "Set Candidate Grouping Order"

    Examples:
      | first_name | surname  | party                   |
      | Anthony    | Albanese | Australian Labor Party  |

  Scenario Outline: See Other Candidates in Ballot
    Given I am on the add candidate page
    When I fill in the "candidate_first_name" field with <first_name>
    And I fill in the "candidate_surname" field with <surname>
    And I fill in the "candidate_party" field with <party>
    When I click "Next"
    Then I should see "Kevin Rudd"

    Examples:
      | first_name | surname  | party                   |
      | Anthony    | Albanese | Australian Labor Party  |