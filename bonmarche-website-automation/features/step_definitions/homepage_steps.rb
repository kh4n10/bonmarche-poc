Given(/^I am on the homepage$/) do
	@bonmarche_site = BonmarcheSite.new

	@bonmarche_site.bonmarche_home_page.load
end

When(/^I click on sign in/) do
	@bonmarche_site.bonmarche_home_page.click_sign_in
end

Then(/^I am taken to the sign in page$/) do
	expect(current_path).to include '/login/' 
end