Feature: Add a new client
  
  As a lawfirm
  I need to be able to add a new clients when they come into the office
  I want to be able to add a new client
  
  Scenario: As a lawfirm i want to be able to go from the homepage to a new client
    Given I am on the home page
    When I click on the "New Client" link
    Then I should go to the "New Client" page
    And I should see 