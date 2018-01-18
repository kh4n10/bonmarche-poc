Given(/^I am on the dressing gown page$/) do
	@bonmarche_site = BonmarcheSite.new
	@bonmarche_site.bonmarche_dressing_gown_page.load
end

When(/^I filter down the options by size and colour/) do
	@bonmarche_site.bonmarche_dressing_gown_page.select_size
	@bonmarche_site.bonmarche_dressing_gown_page.select_colour
end

And(/^I am able to click on the dressing gown I want$/) do
	@bonmarche_site.bonmarche_dressing_gown_page.select_gown
	@bonmarche_site.bonmarche_dressing_gown_page.select_size_for_gown
	@bonmarche_site.bonmarche_dressing_gown_page.quantity_selector
end

# And(/^I am able to select a size and quantity$/) do

# end

Then(/^I can add it to my basket $/) do
	@bonmarche_site.bonmarche_dressing_gown_page.place_in_basket
end
