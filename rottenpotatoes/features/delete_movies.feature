Feature: search for movies by director

  As a database manager
  So that I can manage the database
  I want to be able to add, edit and delete movies

Background: movies in database

  Given the following movies exist:
  | title        | rating | director     | release_date |
  | Star Wars    | PG     | George Lucas |   1977-05-25 |
  | Blade Runner | PG     | Ridley Scott |   1982-06-25 |
  | Alien        | R      |              |   1979-05-25 |
  | THX-1138     | R      | George Lucas |   1971-03-11 |

Scenario: add new movie to database
  When I am on the home page
  And  I follow "Add new movie"
  And  I fill in "Title" with "New movie"
  And  I fill in "Director" with "fake director"
  And  I press "Save Changes"
  Then I should be on the home page
  And  I should see "New movie was successfully created."

Scenario: add director to existing movie
  When I go to the edit page for "Alien"
  And  I fill in "Director" with "Ridley Scott"
  And  I press "Update Movie Info"
  Then the director of "Alien" should be "Ridley Scott"
  And  I should see "Alien was successfully updated."

Scenario: change director in existing movie
  When I go to the edit page for "Alien"
  And  I fill in "Director" with "Test_director"
  And  I press "Update Movie Info"
  Then the director of "Alien" should be "Test_director"

Scenario: delete an existing movie
  When I am on the details page for "Alien"
  And  I press "Delete"
  Then I should be on the home page
  And  I should see "Movie 'Alien' deleted."
