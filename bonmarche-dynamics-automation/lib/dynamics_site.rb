class DynamicsSite 

	def dynamics_login_page
		Pages::DynamicsLoginPage.new
	end

	def dynamics_homepage
		Pages::DynamicsHomepage.new
	end

	def dynamics_sales_hub
		Pages::DynamicsSalesHub.new
	end	

end