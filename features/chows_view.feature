Feature: User can view the foods from all categories
  Scenario: See all foods in the cookies category
    Given I am on the chows page
    And I wait for 5 seconds
    When I press "COOKIES"
    Then I should see "Kashi Oatmeal"
  
  Scenario: See all foods in the cornbread category
    Given I am on the chows page
    When I press "CORNBREAD"
    Then I should see "Gladiola"
    
  Scenario: Navigate to login screen (boilerplate)
    Given I am on the chows page
    When I follow "Log in"
    Then I am on the login page
    
  Scenario: Navigate to home page (boilerplate)
    Given I am on the chows page
    When I follow "Home"
    Then I am on the home page
    