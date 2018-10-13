Feature: Add/Change categories
    As a blog administrator
    So that I can manage all my blogposts by grouping them
    I want to be able to create and modify the categories in my blogposts

    Background:
        Given the blog is set up
        And I am logged into the admin panel

    Scenario: Add a new category
        When I go to the categories page
        And I fill in "category_name" with "Gorilla"
        And I fill in "category_description" with "ground dwelling herbivorous ape"
        And I press "Save"
        Then I should see "Gorilla"
        And I should see "ground dwelling herbivorous ape"

    Scenario: Edit an existing category
        Given I am on the categories page
        When I follow "Edit"
        And I fill in "category_description" with "routine stuff"
        And I press "Save"
        Then I should see "routine stuff"
