require 'rails_helper'

feature "Viewing lunches" do
	scenario "Listing all lunches" do
		
		lunch = FactoryGirl.create(:lunch, date: "12/25/2016")

		visit lunches_path
		
		click_link '12/25/2016'
		expect(page.current_url).to eql(lunch_url(lunch))
	end
end