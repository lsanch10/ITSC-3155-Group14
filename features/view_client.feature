Feature: View clients
  
  As a lawfirm
  I need to be able to view clients and create them
  
  Scenario:As a lawfirm i want to be able to look at my clients
    Given I am on the home page
    When I click on the "Client List" link
    Then I should be on the "Listing Clients" page
  Scenario:As a lawfirm i want to be able to create clients
    Given I am on the Client List page
    When I click on the "New Client" link
    Then I should be on the "New Client" page
    And I should see the "Name" field
    And I should see the "Address" field
    And I should see the "Phone number" field
    And I should see the "Email" field
    And I should see the "Court date" field
    And I should see the "Case description" field
    
    
    
    