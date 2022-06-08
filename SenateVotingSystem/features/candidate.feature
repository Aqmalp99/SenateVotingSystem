Feature: Add a Candidate to the Ballot
  As an electoral commissioner
  I want to add a candidate to the ballot paper
  So that Australia can engage in democratic processes

  Background: Candidates currently in the database
    Given The following candidates are in the database:
      | first_name | surname   | party                  | order |
      | Kevin      | Rudd      | Australian Labor Party | 3     |
      | Scott      | Morrison  | Liberal National Party | 2     |
      | Penny      | Wong      | Australian Labor Party | 2     |

    

  Scenario Outline: Submit Candidate Form First Page Error (sad path)
    Given I am on the "admin" "add-candidate" page
    When I fill in the "candidate_first_name" field with <first_name>
    And I fill in the "candidate_surname" field with <surname>
    When I click "Next"
    Then I should see "Add New Candidate"

    Examples:
      | first_name | surname  |
      | Anthony    | Albanese |

  Scenario Outline: See Other Candidates in Ballot
    Given I am on the "admin" "add-candidate" page
    When I fill in the "candidate_first_name" field with <first_name>
    And I fill in the "candidate_surname" field with <surname>
    And I fill in the "candidate_party" field with <party>
    When I click "Next"
    Then I should see "Kevin Rudd"

    Examples:
      | first_name | surname  | party                   |
      | Anthony    | Albanese | Australian Labor Party  |

  Scenario Outline: No Other Candidates in Ballot
    Given I am on the "admin" "add-candidate" page
    When I fill in the "candidate_first_name" field with <first_name>
    And I fill in the "candidate_surname" field with <surname>
    And I fill in the "candidate_party" field with <party>
    When I click "Next"
    Then I should see "There are no other candidates in the party grouping."

    Examples:
      | first_name | surname  | party       |
      | Adam       | Bandt    | The Greens  |

  Scenario Outline: Submit Candidate Form Second Page Error (sad path)
    Given I am on the "admin" "add-candidate" page
    When I fill in the "candidate_first_name" field with <first_name>
    And I fill in the "candidate_surname" field with <surname>
    And I fill in the "candidate_party" field with <party>
    When I click "Next"
    When I click "Confirm"
    Then I should see "Set Candidate Grouping Order"

    Examples:
      | first_name | surname  | party                   |
      | Anthony    | Albanese | Australian Labor Party  |

  Scenario Outline: Submit Candidate Form
    Given I am on the "admin" "add-candidate" page
    When I fill in the "candidate_first_name" field with <first_name>
    And I fill in the "candidate_surname" field with <surname>
    And I fill in the "candidate_party" field with <party>
    When I click "Next"
    When I fill in the "candidate_order" field with <order>
    When I click "Confirm"
    Then I should see "Add New Candidate"

    Examples:
      | first_name | surname  | party                   | order |
      | Anthony    | Albanese | Australian Labor Party  | 4     |

  Scenario: NavBar should link to Add Candidate Form
    Given I am on the "admin" "voting-results" page
    When I find and select "Add Candidate"
    Then I should be on the "admin" "add-candidate" page