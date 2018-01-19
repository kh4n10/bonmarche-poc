Given(/^I am on the sales hub$/) do
	@dynamics_site = DynamicsSite.new
	@dynamics_site.dynamics_sales_hub.load
end

When(/^I view a leads information$/) do
	@dynamics_site.dynamics_sales_hub.find_alex_wu.click
end

And(/^I can then create a new appointment with them$/) do
	@dynamics_site.dynamics_sales_hub.find_add_to_timeline.click
	@dynamics_site.dynamics_sales_hub.find_add_new_appointment.click
	sleep 2
	@dynamics_site.dynamics_sales_hub.fill_in_subject
	@dynamics_site.dynamics_sales_hub.fill_in_location
	@dynamics_site.dynamics_sales_hub.all_day_checkbox_xpath.set(true)	
	@dynamics_site.dynamics_sales_hub.fill_in_description
	# @dynamics_site.dynamics_sales_hub.find_set_priority.click
	# @dynamics_site.dynamics_sales_hub.find_set_priority_high.click
	sleep 1
end

Then(/^The appointment is saved$/) do
	@dynamics_site.dynamics_sales_hub.find_save_button.click
	sleep 2
end