class Pages::BonmarcheHomepage < SitePrism::Page

<<<<<<< HEAD
	# include Capybara::DSL
=======
>>>>>>> 568b0a2dbccd407c6f21729386e76640571779f8

	set_url "http://www.bonmarche.co.uk/"
	set_url_matcher /bonmarche.co.uk/

<<<<<<< HEAD
	# def initialize
	# 	@url_to_test = 'http://www.bonmarche.co.uk/'
	# end

	# def load_website
	# 	visit(@url_to_test)
	# end
=======
	element :sign_in, :xpath, '//*[@id="wrapper"]/div[2]/header/div/div[2]/div[2]/div[1]/a'


	def click_sign_in
		sign_in.click
	end

	def url_check_in_place
		current_url
	end
>>>>>>> 568b0a2dbccd407c6f21729386e76640571779f8

end