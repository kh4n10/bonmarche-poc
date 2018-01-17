class BonmarcheHomepage

	include Capybara::DSL

	# set_url "http://www.bonmarche.co.uk/"
	# set_url_matcher /bonmarche.co.uk/

	def initialize
		@url_to_test = 'http://www.bonmarche.co.uk/'
	end

	def load_website
		visit(@url_to_test)
	end

end