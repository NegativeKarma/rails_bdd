Feature: Edit article
  As a blogger
  In order to keep my content accurate
  I would like to be able to edit my articles

  Background:
    Given The following article exist
    | title                 | content                                |
    | Learning Rails 5      | Excited about learning a new framework |

  Scenario: Blogger visits landing page and edits article
    When I visit "Learning Rails 5" page
    And I click on "Edit" link
    When I fill in "Title" with "Edit Title"
    And I fill in "Content" with "Edit Content"
    And I click "Update" button
    Then I should be on "Edit Title" page
    And I should see "Updated Successfully"
