require 'rails_helper'

feature 'Deleting lunch' do
	scenario 'can delete a lunch' do

	FactoryGirl.create(:lunch, date:'06/03/2016')
	visit lunches_path
	click_link "Delete"

	expect(page).to have_content("Lunch has been deleted.")

	end
end 