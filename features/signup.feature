Feature: User can create an account
  Background:
    Given the following users exist:
        | last_name | first_name | email                 | password |
        | Barker    | Mitchell   | lilbitch@gmail.com    | sdfsdf   |
        | Arroyo    | Brandon    | mediumbitch@gmail.com | sdfsdf   |
        | Wilson    | Kyle       | bigassbitch@gmail.com | sdfsdf   |

  Scenario: Attempt to create account from incomplete information
    Given I am on the signup page
    When I fill in "Last Name" with "Barker"
    And I fill in "First Name" with "Mitchell"
    And I press "Create my account"
    Then I should see "The form contains 5 errors."
    And I am on the signup page

  Scenario: Attempt to create account with previously registered email
    Given I am on the signup page
    When I fill in "Last Name" with "Bitchell"
    And I fill in "First Name" with "Marker"
    And I fill in "Email" with "lilbitch@gmail.com"
    And I fill in "Password" with "41968:)"
    And I fill in "Confirmation" with "41968:)"
    And I press "Create my account"
    Then I should see "Email has already been taken"
    And I am on the signup page
    
  Scenario: Create and account with all the required fields
    Given I am on the signup page
    When I fill in "Last Name" with "Bitchell"
    And I fill in "First Name" with "Marker"
    And I fill in "Email" with "lilbitch2@gmail.com"
    And I fill in "Password" with "42069;)"
    And I fill in "Confirmation" with "42069;)"
    And I press "Create my account"
    Then I should see "Welcome to Fork-Friendly!"
    And I am on the user home page