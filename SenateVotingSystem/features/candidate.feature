Feature: Add a Candidate to the Ballot
  As an electoral commissioner
  I want to add a candidate to the ballot paper
  So that Australia can engage in democratic processes

  Scenario Outline: Submit Candidate Personal Information
    Given I am on the add candidate page
    When I fill in the "first name" field with <first_name>
    And I fill in the "surname" field with <surname>
    And I fill in the "party" field with <party>
    When I click "next"
    Then I should see "Set Candidate Grouping Order"

    Examples:
      | first_name | surname  | party                   |
      | Anthony    | Albanese | Australian Labor Party  |