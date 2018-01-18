@click_on_sign_in
Feature: Filter through gowns and select the one I want

	Scenario: I am able to filter through the different dressing gowns with the select boxes and click on the dressing gown I want after. 
		Given I am on the dressing gown page
		When I filter down the options by size and colour
		Then I am able to click on the dressing gown I want. 