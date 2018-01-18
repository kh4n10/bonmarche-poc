
class BonmarcheSite

	def bonmarche_home_page
		Pages::BonmarcheHomepage.new
	end

	def bonmarche_login_page
		Pages::BonmarcheLoginPage.new
	end

	def bonmarche_my_account_page
		Pages::BonmarcheMyAccountPage.new
	end

	def bonmarche_dressing_gown_page
		Pages::BonmarcheDressingGownPage.new
	end

end