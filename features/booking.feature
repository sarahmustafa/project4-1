Feature: Standard Business
	As a user
	I want to be able to view certain information
	So I can have confidence in the system
	
	
Scenario: List Bookings
	Given I am on 'bookings' page
#	Then in the "body", I should see "Listing Bookings"
#	And in the "th", I should see "Movie"
#	And in the "th", I should see "Showing"
#	And in the "th", I should see "Number of seats"
#	And in the "th", I should see "Customer name"
#	And in the "th", I should see "Phone"
#	And in the "th", I should see "Email"
	And in the "body", I should see a link to "New Booking"
	
	
	Scenario: Create booking
		Given I am on the 'new bookings' page
		When I enter "3" for "Number of seats"
		And I enter "Zuhair" for "Customer name"
		And I enter "12345678987" for "Phone"
		And I enter "zzg@cmu.edu" for "Email"
		And I click button "Create Booking"
		Then I should see "Booking was successfully created." 
		


    