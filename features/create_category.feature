Feature: Merge Articles
  As a blog administrator
  In order to manage categories on my blog
  I want to be able to create categories

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



  Scenario: Successfully create article
    Given I am logged in as "admin"
    And I am on the new category page
    Then  I should see "Merge Articles"
    And I should see "Name" field
    And I should see "Merge" button
    When I fill in "Article ID" with "2"
    And I press "merge_button"
    Then I should be on the article edit page for "Test Article 1"
    Then I should see "test Article one"




