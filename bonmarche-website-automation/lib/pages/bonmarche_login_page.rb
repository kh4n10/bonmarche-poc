class Pages::BonmarcheLoginPage < SitePrism::Page
	
	set_url "https://www.bonmarche.co.uk/login/?original=%2Faccount%2F"
	set_url_matcher /bonmarche.co.uk\/login\/?original=%2Faccount%2F/

# Below is proof of how the xpath of the username when signing in always changes, also the id always changes too.
	# //*[@id="dwfrm_login_username_d0bjhjyacbxk"]
	# //*[@id="dwfrm_login_username_d0ektvtglujp"]


	element :sign_in_button, :xpath, '//*[@id="dwfrm_login"]/fieldset/div[3]/button'
	element :logout_button, :xpath, '//*[@id="wrapper"]/div[2]/header/div/div[2]/div[2]/div[1]/a[2]'

	def enter_email
		fill_in('Email address', :with => 'u2259347@mvrht.net')
	end

	def enter_password
		fill_in('Password', :with => 'Password123')
	end

	def click_sign_in_button
		sign_in_button.click
	end

	def logout_button_seen
		logout_button
	end
end