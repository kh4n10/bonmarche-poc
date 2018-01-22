Given(/^I am on the sales hub$/) do
	@dynamics_site = DynamicsSite.new
	@dynamics_site.dynamics_sales_hub.load
end

When(/^I view a leads information$/) do
	@dynamics_site.dynamics_sales_hub.find_alison.click
	expect(@dynamics_site.dynamics_sales_hub.find_add_to_timeline.visible?).to be true
end

Given(/^I am on the correct leads page$/) do
	expect(@dynamics_site.dynamics_sales_hub.find_add_to_timeline.visible?).to be true
end

When(/^I click on a new appointment$/) do
	@dynamics_site.dynamics_sales_hub.find_add_to_timeline.click
	@dynamics_site.dynamics_sales_hub.find_add_new_appointment.click
	sleep 3
	expect(@dynamics_site.dynamics_sales_hub.all_day_event.visible?).to be true
end

And(/^Populate the appointment form$/) do
	@dynamics_site.dynamics_sales_hub.fill_in_subject
	@dynamics_site.dynamics_sales_hub.fill_in_location
	@dynamics_site.dynamics_sales_hub.all_day_checkbox_xpath.set(true)	
	@dynamics_site.dynamics_sales_hub.fill_in_description
	sleep 1
	@dynamics_site.dynamics_sales_hub.find_save_button.click
end

Then(/^The appointment is saved$/) do
	expect(@dynamics_site.dynamics_sales_hub.find_close_toast.visible?).to be true
end


When(/^I delete the appointment$/) do
	@dynamics_site.dynamics_sales_hub.find_delete_button.click
	expect(@dynamics_site.dynamics_sales_hub.find_appointment.visible?).to be true
	sleep 1
	@dynamics_site.dynamics_sales_hub.find_confirm_button.click
end

Then(/^The appointment is deleted off the sales hub page$/) do
	sleep 2
	expect(page).not_to have_selector('#TL_Group_key_1')
end