@sales_hub
Feature: Microsoft Dynamics Sales Hub page
	
	Background:
		Given I am on the sales hub
		When I view a leads information
	
	Scenario: I can go into the sales hub and create an appointment with the member
		Given I am on the correct leads page
		When I click on a new appointment
		And Populate the appointment form
		Then The appointment is saved

	Scenario: I can go into the sales hub and delete the previously created appointment
		Given I am on the correct leads page
		When I delete the appointment
		Then The appointment is deleted off the sales hub page