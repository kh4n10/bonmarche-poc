class BonmarcheDressingGownPage < SitePrism::Page

	set_url "http://www.bonmarche.co.uk/womens/lingerie-and-nightwear/dressing-gowns/"
	set_url_matcher /bonmarche.co.uk\/womens\/lingerie-and-nightwear\/dressing-gowns/

	element :size_selector, "input[id= 'swatch-20']"
	element :colour_selector, :xpath, '//*[@id="secondary"]/div[1]/div[2]/div/div[4]/div/div/ul/li[2]/a/i'
	element :gown_selector, :xpath, '//*[@id="d9b733b0a71e2ae53662e93992"]/div[1]/a/img'

	def select_size
		size_selector.click
	end
	
	def select_colour
		colour_selector.click
	end

	def select_gown
		gown_selector.click
	end

end