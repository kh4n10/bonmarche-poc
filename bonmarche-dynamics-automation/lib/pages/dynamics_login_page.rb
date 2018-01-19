class Pages::DynamicsLoginPage < SitePrism::Page

	set_url "https://login.microsoftonline.com/common/oauth2/authorize?client_id=bab47555-038a-4434-a931-96cc6091cdd7&response_mode=form_post&response_type=code+id_token&scope=openid+profile&state=OpenIdConnect.AuthenticationProperties%3dRnCWMifl0uc2uGF6PXbavkRJIYy-aBQ6ThdlpyuO0qtE6Nm-IDIUMsXH8rTBxqkd__OkNs8i4jB7zYK5qioUzfmCmeZw4grJl2ZL1vsDd7RWOccfPOPhePIWQsUvTpZBJrlpnp8sBkS5MM7KQchulthJ47hzqJTo-quX7LT687U&nonce=636519528081498045.MWVhZTk5YjYtY2E3OC00MWNkLWJiZWUtOGQ1ZGM4ZDg3MWJkNzI5NDZjYjItYWRhYS00YzllLWEzMjctOTIxNDQyNjVkZWE1&redirect_uri=https%3a%2f%2fhome.dynamics.com%2f&post_logout_redirect_uri=https%3a%2f%2fhome.dynamics.com"
	set_url_matcher /login.microsoftonline.com\/common\/oauth2\/authorize?client_id=bab47555-038a-4434-a931-96cc6091cdd7&response_mode=form_post&response_type=code+id_token&scope=openid+profile&state=OpenIdConnect.AuthenticationProperties%3dRnCWMifl0uc2uGF6PXbavkRJIYy-aBQ6ThdlpyuO0qtE6Nm-IDIUMsXH8rTBxqkd__OkNs8i4jB7zYK5qioUzfmCmeZw4grJl2ZL1vsDd7RWOccfPOPhePIWQsUvTpZBJrlpnp8sBkS5MM7KQchulthJ47hzqJTo-quX7LT687U&nonce=636519528081498045.MWVhZTk5YjYtY2E3OC00MWNkLWJiZWUtOGQ1ZGM4ZDg3MWJkNzI5NDZjYjItYWRhYS00YzllLWEzMjctOTIxNDQyNjVkZWE1&redirect_uri=https%3a%2f%2fhome.dynamics.com%2f&post_logout_redirect_uri=https%3a%2f%2fhome.dynamics.com/
	
	element :otherTileText, 'other_account'
	element :i0116, 'email_input'
	element :i0118, 'password_input'
	element :idSIButton9, 'sign_in_button'

	def click_other_account
		other_account.click
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

	

end