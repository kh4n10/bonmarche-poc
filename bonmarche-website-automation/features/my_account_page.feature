@login_to_account
Feature: Click on a section once logged in

	Scenario: I have successfully logged into my account and I am able to navigate to a specific section of the site.
		Given I am on my account page
		When I hover on the womens sections
		And Click on the dressing gowns option
		Then I am taken to the dressing gowns page