Feature: User (admin) can upload csv files to update chows
  Scenario: Administrator uploads csv files to update the food database
    Given I am on the upload page
    When I upload the file "fork_friendly_upcs.csv"
    And I press "Import"
    And I go to the chows page
    And I press "COOKIES"
    Then I should see "Kashi Oatmeal"