class Pages::BonmarcheMyAccountPage < SitePrism::Page

	set_url "https://www.bonmarche.co.uk/account/?login=true"
	set_url_matcher /bonmarche.co.uk\/account\/?login=true/

	element :women_section, :xpath, '//*[@id="wrapper"]/div[2]/header/div/div[4]/div/ul/li[2]/div[1]/a'
	element :going_to_a_section, :xpath, '//*[@id="wrapper"]/div[2]/header/div/div[4]/div/ul/li[2]/div[2]/div/div/ul/li[2]/ul/li[8]'

	def hover_on_women_section
		women_section.hover
	end

	def click_on_a_section
		going_to_a_section.click
	end
	
end