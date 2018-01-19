Feature: Microsoft Dynamics Login Page

	Scenario: I can log into my account
		Given I am on the log in page  
		When I click sign in as new user I can enter my account details
		Then I am taken to the Dynamics front page