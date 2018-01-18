@click_on_sign_in
Feature: Log in to my account

	Scenario: I am loaded on to the sign in page and I am able to type in my credentials and sign in to my account.
		Given I am on the login page
		When I enter my log in credentials
		And I click on the sign in button
		Then I am taken to the account page