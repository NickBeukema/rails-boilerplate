Feature: Todos 
  When a user visits "/dashboard", they are redirected to the login screen

  Scenario: An unauthenticated user cannot see the protected areas of the app
    Given I visit "/dashboard"
    Then I should see the login screen

  Scenario: An aunthenticated user can see the dashboard
    Given I login as an admin user
    And I visit "/dashboard"
    Then I should see the dashboard
    And I should see my email address in the navbar

    When I logout
    Then I should see the login screen

