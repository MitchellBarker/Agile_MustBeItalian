Feature: User can create an account
  Background:
    Given the following users exist:
        | last_name | first_name | email                 | password |
        | Barker    | Mitchell   | lilbitch@gmail.com    | sdfsdf   |
        | Arroyo    | Brandon    | mediumbitch@gmail.com | sdfsdf   |
        | Wilson    | Kyle       | bigassbitch@gmail.com | sdfsdf   |

  Scenario: Attempt to create account from incomplete information
    Given I am on the home page
    When I fill in "name" as "Mitchell"
    And I press "Create my account"
    Then I will see "This form contains 5 errors"
    And I am on the signup page

  Scenario: Attempt to create account with previously registered email
    Given I am on the signup page
    When I fill in "last_name" as "Bitchell"
    And I fill in "first_name" as "Marker"
    And I fill in "email" as "lilbitch@gmail.com"
    And I fill in "password" as "41968:)"
    And I press "Create my account"
    Then I will see "Email has already been taken"
    And I am on the signup page
    
  Scenario: Create and account with all the required fields
    Given I am on the signup page
    When I fill in "last_name" as "Bitchell"
    And I fill in "first_name" as "Marker"
    And I fill in "email" as "lilbitch@gmail.com"
    And I fill in "password" as "42069;)"
    And I press "Create my account"
    Then I will see "Welcome to Fork-Friendly!"
    And I am on the user home page