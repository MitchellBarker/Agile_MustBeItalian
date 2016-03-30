Feature: User can create an account
  Scenario: Create an account
    Given I am on the fork-friendly sign-up page
    When I fill in the following:
        |   name    |   this name is way too long the max is 50 characters and this one has 70  |
    And I submit the forum
    Then I will recieve an error message
    
    When I fill in the following:
        |   user_name   |   #$%^& invalid name *&^%^&*)(    |
    And I submit the forum
    Then I will recieve an error message
    
    When I fill in the following:
        |   email   |   (&^R$$( invalid email )(*^%$#%  |
    And I submit the forum
    Then I will recieve an error message
    
    When I fill in the following:
        |   password            |   1234    |
        |   comfirm_password    |   1234    |
    And I submit the forum
    Then I will recieve an error message
    
    When I fill in the following
        |   name                |   Valid Name                  |
        |   user_name           |   Valid Username              |
        |   email               |   valid_email@mailman.com     |
        |   password            |   appropriate_length_password |
        |   comfirm_password    |   appropriate_length_password |
    And I submit the forum
    Then My account will be created and I will be redirected to the home page