Given(/^I am on the log in page$/) do
	@dynamics_site = DynamicsSite.new
	@dynamics_site.dynamics_login_page.load
end

When(/^I click sign in as new user I can enter my account details$/) do

end

Then(/^I am taken to the Dynamics front page$/) do

end