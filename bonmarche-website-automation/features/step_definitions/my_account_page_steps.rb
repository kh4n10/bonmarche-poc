Given(/^I am on my account page$/) do
	@bonmarche_site = BonmarcheSite.new
	@bonmarche_site.bonmarche_my_account_page.load
end

When(/^I hover on the womens sections$/) do
	@bonmarche_site.bonmarche_my_account_page.hover_on_women_section
end

And(/^Click on the dressing gowns option$/) do
	sleep 2
	@bonmarche_site.bonmarche_my_account_page.click_on_a_section
end

Then(/^I am taken to the dressing gowns page$/) do
	expect(current_path).to include '/womens/lingerie-and-nightwear/dressing-gowns/' 
end