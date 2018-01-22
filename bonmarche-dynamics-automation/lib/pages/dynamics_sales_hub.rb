class Pages::DynamicsSalesHub < SitePrism::Page
	
	set_url 'https://testingcircle.crm11.dynamics.com/main.aspx?appid=27360ee5-15ec-e711-a8a7-00224801ac12&pagetype=dashboard&id=45f88f83-0e67-443b-bd05-81d49719f6b1&_canOverride=true'
	# set_url_matcher /testingcircle.crm11.dynamics.com\/main.aspx?appid=27360ee5-15ec-e711-a8a7-00224801ac12&pagetype=dashboard&id=45f88f83-0e67-443b-bd05-81d49719f6b1&_canOverride=true

	element :alison, '#id-45f88f83-0e67-443b-bd05-81d49719f6b1-3-Component8738712-ListItemContainer_e9975ea3-531c-e511-80d8-3863bb3ce2c8'
	element :add_to_timeline, '#id-e3b6ddb7-8df0-4410-ac7b-fd32e5053d38-19-notescontrol-action_bar_add_command_id'
	element :add_new_appointment, '#id-e3b6ddb7-8df0-4410-ac7b-fd32e5053d38-19-notescontrol-appointment'
	element :set_priority, '#id-5895e983-598b-4834-80f9-68a4e9f4f744-12-prioritycode-prioritycode.fieldControl-option-set-select-container'
	element :set_priority_high, '#id-5895e983-598b-4834-80f9-68a4e9f4f744-12-prioritycode-prioritycode.fieldControl-option-set-select_b2dab8ec-0819-477b-8bc6-e9e3f90576592'
	element :save_button, '#quickCreateSaveBtn'
	element :close_button_on_toast, '#closeIcon'
	element :all_day_event, '#id-5895e983-598b-4834-80f9-68a4e9f4f744-7-isalldayevent-field-label'
	element :created_appointment, '#TL_Group_key_1'
	element :delete_appointment, '.symbolFont.Delete-symbol'
	element :confirm_button, '#confirmButtonText'


	# Won't check the checkbox with id so used xpath and it worked for some reason...
	# element :all_day_checkbox, '#id-5895e983-598b-4834-80f9-68a4e9f4f744-7-isalldayevent-isalldayevent.fieldControl-checkbox-container'
	element :all_day_checkbox_xpath, :xpath, '//*[@id="id-5895e983-598b-4834-80f9-68a4e9f4f744-7-isalldayevent-isalldayevent.fieldControl-checkbox-control"]'


	def find_alison
		alison
	end

	def find_add_to_timeline
		add_to_timeline
	end

	def find_add_new_appointment
		add_new_appointment
	end

	def find_all_day_checkbox
		all_day_checkbox
	end

	def find_set_priority
		set_priority
	end

	def find_set_priority_high
		set_priority_high		
	end

	def find_save_button
		save_button
	end

	def find_close_toast
		close_button_on_toast
	end

	def find_all_day_event
		all_day_event
	end

	def find_delete_button
		delete_appointment
	end

	def find_confirm_button
		confirm_button
	end

	def find_appointment
		created_appointment
	end

	def fill_in_subject
		fill_in('id-5895e983-598b-4834-80f9-68a4e9f4f744-4-subject-subject.fieldControl-text-box-text', :with => 'Love')
	end

	def fill_in_location
		fill_in('id-5895e983-598b-4834-80f9-68a4e9f4f744-5-location-location.fieldControl-text-box-text', :with => 'Everywhere and anywhere')
	end

	def fill_in_description
		fill_in('id-5895e983-598b-4834-80f9-68a4e9f4f744-10-description-description.fieldControl-text-box-text', :with => 'For Queen and Country')
	end














end