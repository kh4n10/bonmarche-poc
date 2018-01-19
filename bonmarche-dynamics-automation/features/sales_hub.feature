@logged_in
@sales_hub
Feature: Microsoft Dynamics Homepage

	Scenario: I can go into the sales hub
		Given I am on the homepage 
		When I click on the sales hub card
		Then I am taken to the Dynamics sales hub