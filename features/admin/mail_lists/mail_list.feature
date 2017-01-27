Feature: Administrators start at the mail lists page
  Background:
    Given I am an administrator

  Scenario: Admins can see all of their mail lists
    Given I have mail lists
    When I login as an admin user
    Then I should see my mail lists

  Scenario: Admins can create new mail lists
    Given I have mail lists
    And I login as an admin user

    When I create a new mail list
    Then I should see the create new mail list page

    When I fill out the create new mail list page
    And I submit the create new mail list page
    Then I should see my new mail list

  Scenario: Admins have a empty state for mail lists
    Given I login as an admin user
    Then I should see I have no mail lists
