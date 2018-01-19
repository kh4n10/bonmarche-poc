@logged_in
@sales_hub
Feature: Microsoft Dynamics Sales Hub page

	Scenario: I can go into the sales hub
		Given I am on the sales hub
		When I view a leads information
		And I can then create a new appointment with them
		Then The appointment is saved

