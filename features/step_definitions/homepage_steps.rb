Given(/^I am on the homepage$/) do
	@bonmarche_site = BonmarcheSite.new
<<<<<<< HEAD
	# @bonmarche_site.bonmarche_home_page.load_website
=======
>>>>>>> 568b0a2dbccd407c6f21729386e76640571779f8
	@bonmarche_site.bonmarche_home_page.load
end

When(/^I click on sign in/) do
	@bonmarche_site.bonmarche_home_page.click_sign_in
end

Then(/^I am taken to the sign in page$/) do
	expect(current_path).to include '/login/' 
end