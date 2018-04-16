require 'rails_helper'

describe "Create Employee" do
	it "manager creates a new employee" do

		visit employees_path

		click_link 'Add New Employee'

		expect(current_path).to eq(new_employee_path)

		fill_in 'Name', with: 'Travis Blessing'
		fill_in 'Email', with: 'example1@gmail.com'
		fill_in 'Phone', with: '111-111-1111'
		fill_in 'Time', with: 40
		fill_in 'Password', with: 'secret'
		fill_in 'Confirm Password', with: 'secret'

		click_button 'Create Employee'

		expect(page).to eq(employees_path)
		expect(page).to have_link('Travis Blessing')
	end

end