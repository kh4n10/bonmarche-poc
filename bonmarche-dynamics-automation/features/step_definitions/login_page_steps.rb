Given(/^I am on the log in page$/) do
	@dynamics_site = DynamicsSite.new
	@dynamics_site.dynamics_login_page.load
end

When(/^I click sign in as new user I can enter my account details$/) do
	@dynamics_site.dynamics_login_page.click_sign_in_header
	@dynamics_site.dynamics_login_page.fill_in_email(ENV['DYMAMICS_EMAIL'])
	@dynamics_site.dynamics_login_page.click_sign_in
	@dynamics_site.dynamics_login_page.fill_in_password(ENV['DYMAMICS_PASSWORD'])
	@dynamics_site.dynamics_login_page.click_sign_in
	@dynamics_site.dynamics_login_page.click_no
end

Then(/^I am taken to the Dynamics front page$/) do
	expect(current_url).to eql 'https://home.dynamics.com/?pcexp=true&uictx=me' 
end
