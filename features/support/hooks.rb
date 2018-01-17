Before('@click_on_sign_in') do
	@bonmarche_site = BonmarcheSite.new
	@bonmarche_site.bonmarche_home_page.load
	@bonmarche_site.bonmarche_home_page.click_sign_in
end