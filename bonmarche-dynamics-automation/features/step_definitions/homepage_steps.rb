Given(/^I am on the homepage$/) do
	@dynamics_site = DynamicsSite.new
	@dynamics_site.dynamics_homepage.load
	expect(@dynamics_site.dynamics_homepage.find_sales_hub.visible?).to be true
end

When(/^I click on the sales hub card$/) do
	@dynamics_site.dynamics_homepage.find_sales_hub.click
end

Then(/^I am taken to the Dynamics sales hub$/) do
  expect(@dynamics_site.dynamics_homepage.find_sales_hub_span.text).to eq 'Sales Hub'
end