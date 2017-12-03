Feature: Comment on article
  As a reader
  In order to comment on an article
  I would like to be able to comment on articles

  Background:
    Given The following article exist
    | title                 | content                                |
    | Learning Rails 5      | Excited about learning a new framework |
    And I visit the landing page

  Scenario: User comments on article
    Given I click "Show"
    And I fill in "Reader" with "Something"
    And I fill in "Content" with "Something"
    And I click "Post Comment"
    Then I should see "Something"
