Feature: Comment on article
  As a reader
  In order to comment on an article
  I would like to be able to comment on articles

  Background:
    Given The following article exist
    | title                 | content                                |
    | Learning Rails 5      | Excited about learning a new framework |
    Given I visit the landing page
    When I click "Show"

  Scenario: User comments on article
    And I visit "Learning Rails 5" page
    And I fill in "Reader" as "mail@mail.com"
    And I fill in "Content" with "Something"
    And I click "Create Comment" button
    Then I should see "Something"
