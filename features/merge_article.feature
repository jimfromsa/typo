Feature: Merge Articles
  As a blog administrator
  In order to manage articles on my blog
  I want to be able to merge articles

  Background:
    Given the blog is set up
    And the following users exist:
      | login | email | password | profile |
      | wessel | email1 | aaaaaaaa | publisher |
      | piet | email2 | aaaaaaaa | contributor |
    And the following articles exist:
      | title | body | author |
      | Test Article 1 | 1111111111 | wessel |
      | Test Article 2 | 2222222222 | wessel |
      | Test Article 3 | 3333333333 | piet |

  Scenario: Non admin cannot merge articles
    Given I am logged in as "wessel"
    And I am on the article edit page for "Test Article 1"
    Then  I should not see "Merge Articles"
    And I should not see "Article ID" field
    And I should not see "merge_button" button


  Scenario: Successfully merge article bodies
    Given I am logged in as "admin"
    And I am on the article edit page for "Test Article 1"
    Then  I should see "Merge Articles"
    And I should see "Article ID" field
    And I should see "Merge" button
    When I fill in "Article ID" with "2"
    And I press "merge_button"
    Then I should be on the article edit page for "Test Article 1"
    Then I should see "test Article one"

  Scenario: Successfully merge article titles
    Given I am logged in as "admin"
    And I am on the article edit page for "Test Article 1"
    Then  I should see "Merge Articles"
    And I should see "Article ID" field
    And I should see "Merge" button
    When I fill in "Article ID" with "2"
    And I press "merge_button"
    Then I should be on the article edit page for "Test Article 1"
    Then I should see "Test Article 1"


