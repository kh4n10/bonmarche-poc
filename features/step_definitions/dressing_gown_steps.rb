Given(/^I am on the dressing gown page$/) do
	@bonmarche_site = BonmarcheSite.new
	@bonmarche_site.bonmarche_dressing_gown_page.load
end

When(/^I filter down the options by size and colour/) do
	@bonmarche_site.bonmarche_dressing_gown_page.select_size
	@bonmarche_site.bonmarche_dressing_gown_page.select_colour
end

Then(/^I am able to click on the dressing gown I want.$/) do
	@bonmarche_site.bonmarche_dressing_gown_page.select_gown
end