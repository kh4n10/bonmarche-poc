class Pages::DynamicsHomepage < SitePrism::Page
	
	set_url 'https://home.dynamics.com/?pcexp=true&uictx=me'
	set_url_matcher /home.dynamics.com\/?pcexp=true&uictx=me/

		element :sales_hub_card, :xpath, '//*[@id="portal-root"]/div/main/div/div[3]/div[2]/div/ul/li[2]/div/a/div[1]'
		element :sales_hub_span, :xpath, '//*[@id="id-17"]/ul/li[1]/a/div/span' #appBreadCrumbText possible id
		element :pipeline_chart, '#MscrmControls.Containers.DashboardControl-393aaa4c-7c15-48e9-92bb-d5fd16f02431_0_0_0'

		def find_sales_hub
			sales_hub_card
		end

		def find_sales_hub_span
			sales_hub_span
		end

		def find_pipeline_chart
			pipeline_chart
		end

		def find_sales_hub_text
			find("span", :text => "Sales Hub")
		end
end