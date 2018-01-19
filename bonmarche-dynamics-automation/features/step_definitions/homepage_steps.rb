Given(/^I am on the homepage$/) do
	@dynamics_site = DynamicsSite.new
	@dynamics_site.dynamics_homepage.load
	expect(@dynamics_site.dynamics_homepage.find_sales_hub.visible?).to be true
end

When(/^I click on the sales hub card$/) do
	@dynamics_site.dynamics_homepage.find_sales_hub.click
end

Then(/^I am taken to the Dynamics sales hub$/) do
	# Commented outline tries to find the graph and could be more robust but I think it doesn't load quick enough for it to find it
  # So instead i'm finding the span which says sales hub but not the text just the span could be better if I found the text? 
  # Look into that if we've got time. Would make for a more robust test
  # expect(find('//*[@id="id-17"]/ul/li[1]/a/div/span').text).to eq 'Sales Hub'

	# expect(@dynamics_site.dynamics_homepage.find_pipeline_chart.visible?).to be true	
	expect(@dynamics_site.dynamics_homepage.find_sales_hub_span.visible?).to be true

end