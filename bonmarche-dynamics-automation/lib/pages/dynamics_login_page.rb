class Pages::DynamicsLoginPage < SitePrism::Page

	set_url 'https://dynamics.microsoft.com/en-gb/'
	set_url_matcher /dynamics.microsoft.com\/en-gb/
	
	# element :otherTileText, 'other_account'
	element :email_input, '#i0116'
	element :password_input, '#i0118'
	element :sign_in_button, '#idSIButton9'
	element :dont_remember_button, '#idBtn_Back'
	element :sign_in_header, '#meControl'

	def click_sign_in_header
		sign_in_header.click
	end

	def fill_in_email(email)
		email_input.set(email)		
	end

	def fill_in_password(password)
		password_input.set(password)
	end

	def click_sign_in
		sign_in_button.click
	end

	def click_no
		dont_remember_button.click
	end

	

end