Feature: User (admin) can upload csv files to update chows
  Background:
    Given the following users exist:
        | last_name | first_name | email                   | password      | admin |
        | admin     | admin      | admin@fork-friendly.com | lindafriendly | true  |
  
  Scenario: Administrator uploads csv files to update the food database
    Given I am on the login page
    And I fill in "Email" with "admin@fork-friendly.com"
    And I fill in "Password" with "lindafriendly"
    And I click "log_in_submit"
    And I wait for 3 seconds
    When I go to the upload page
    And I upload the file "fork_friendly_upcs.csv"
    And I press "Import"
    And I go to the chows page
    And I press "COOKIES"
    Then I should see "Kashi Oatmeal"