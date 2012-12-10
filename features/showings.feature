Feature: showing
  In order to signup for a movie
  As a user
  I want to register


#Background:
#Given an initial business

#Scenario: new Showing
		#	Given I am on the 'new showing' page
		#	Then in the "title", I should see "New showing"
		#	When I enter "2" for "Movie ID"
		#	And I select "11" from "showing_showing_time_4i"
		#	And I select "51" from "showing_showing_time_5i"
		#	And I enter "50" for "Available seats"
		#	And i click button "Create Showing"
		#	Then I should see "Showing was successfully created."

Scenario: List Showings
	      Given I am on the 'Showings' page
	      Then in the "title", I should see "Listing Showings"
	      And in the "th", I should see "Movie"
	      And in the "th", I should see "Showing Time"
	      And in the "th", I should see "Number of available seats"		

