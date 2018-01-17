Given(/^I am on the login page$/) do
	@bonmarche_site = BonmarcheSite.new
	@bonmarche_site.bonmarche_login_page.load
end

When(/^I enter my log in credentials$/) do
	@bonmarche_site.bonmarche_login_page.enter_email
	@bonmarche_site.bonmarche_login_page.enter_password
end

And(/^I click on the sign in button$/) do
	@bonmarche_site.bonmarche_login_page.click_sign_in_button
end

Then(/^I am taken to the account page$/) do
	expect(@bonmarche_site.bonmarche_login_page.logout_button_seen.visible?).to be true
end