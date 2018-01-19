Before('@logged_in') do
	@dynamics_site = DynamicsSite.new
	@dynamics_site.dynamics_login_page.load
	@dynamics_site.dynamics_login_page.click_sign_in_header
	@dynamics_site.dynamics_login_page.fill_in_email(ENV['DYMAMICS_EMAIL'])
	@dynamics_site.dynamics_login_page.click_sign_in
	@dynamics_site.dynamics_login_page.fill_in_password(ENV['DYMAMICS_PASSWORD'])
	@dynamics_site.dynamics_login_page.click_sign_in
	@dynamics_site.dynamics_login_page.click_no	
end

Before('sales_hub') do
	@dynamics_site = DynamicsSite.new
	@dynamics_site.dynamics_homepage.load
	@dynamics_site.dynamics_homepage.find_sales_hub.click
end