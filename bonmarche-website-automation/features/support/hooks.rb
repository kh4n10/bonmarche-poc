Before('@click_on_sign_in') do
	@bonmarche_site = BonmarcheSite.new
	@bonmarche_site.bonmarche_home_page.load
	@bonmarche_site.bonmarche_home_page.click_sign_in
end

Before('@login_to_account') do
	@bonmarche_site = BonmarcheSite.new
	@bonmarche_site.bonmarche_home_page.load
	@bonmarche_site.bonmarche_home_page.click_sign_in	
	@bonmarche_site.bonmarche_login_page.enter_email
	@bonmarche_site.bonmarche_login_page.enter_password
	@bonmarche_site.bonmarche_login_page.click_sign_in_button
end

Before('@get_to_dressing_gown') do
	@bonmarche_site = BonmarcheSite.new
	@bonmarche_site.bonmarche_home_page.load
	@bonmarche_site.bonmarche_home_page.click_sign_in	
	@bonmarche_site.bonmarche_login_page.enter_email
	@bonmarche_site.bonmarche_login_page.enter_password
	@bonmarche_site.bonmarche_login_page.click_sign_in_button
	@bonmarche_site.bonmarche_my_account_page.hover_on_women_section
	sleep 2
	@bonmarche_site.bonmarche_my_account_page.click_on_a_section
end