class Pages::BonmarcheDressingGownPage < SitePrism::Page

	set_url "http://www.bonmarche.co.uk/womens/lingerie-and-nightwear/dressing-gowns/"
	set_url_matcher /bonmarche.co.uk\/womens\/lingerie-and-nightwear\/dressing-gowns/

	element :size_selector, '#swatch-20'
	element :select_quantity, '#Quantity'
	element :add_to_basket, '#add-to-cart'

	element :colour_selector, :xpath, '//*[@id="secondary"]/div[1]/div[2]/div/div[4]/div/div/ul/li[2]/a/i'
	element :gown_selector, :xpath, '//*[@id="d9b733b0a71e2ae53662e93992"]/div[1]/a/img'
	element :select_quantity, :xpath, '//*[@id="dwfrm_product_addtocart_d0slamjjiind"]/fieldset/div[2]/div/div/div/a[2]'
	element :size_selector_for_gown, :xpath, '//*[@id="product-content"]/div[5]/ul/li[2]/div[2]/ul/li[3]/a'

	def select_size
		size_selector.click
	end
	
	def select_colour
		colour_selector.click
	end

	def select_gown
		gown_selector.click
	end

	def select_size_for_gown
		size_selector_for_gown.click
	end

	def quantity_selector
		select_quantity.click
	end

	def place_in_basket
		add_to_basket.click
	end

end