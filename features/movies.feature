Feature: movie
In order to get a movie's details
As an user
I want to do basic functionalities, list, create, update, and delete customer information

Scenario: valid_new_movie
	Given I am on the 'new movie' page
	When I type "Fight Club" for "Title"
	And I type "Brad Pitt, Jared Leto, Edward Norton" for "Cast"
	And I type "Thriller" for "Genre"
	And I type "PG-13" for "Rating"
	And I type "Thriller" for "Genre"
	And I type "145 mins" for "Duration"
	And I click on the button "Create Movie"
	
Scenario: List Movies
	      Given I am on the 'movies' page
	      Then I should see "Listing all available movies"
	      And in the "th", I should see "Title"
	      And in the "th", I should see "Cast"
	      And in the "th", I should see "Genre"
	      And in the "th", I should see "Duration"
