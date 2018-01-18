class Pages::BonmarcheHomepage < SitePrism::Page

	set_url "http://www.bonmarche.co.uk/"
	set_url_matcher /bonmarche.co.uk/

	element :sign_in, :xpath, '//*[@id="wrapper"]/div[2]/header/div/div[2]/div[2]/div[1]/a'

	def click_sign_in
		sign_in.click
	end

	def url_check_in_place
		current_url
	end

end