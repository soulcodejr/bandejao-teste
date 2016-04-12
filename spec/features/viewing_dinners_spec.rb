require 'rails_helper'

feature "Viewing dinners" do
	scenario "Listing all dinners" do
		
		dinner = FactoryGirl.create(:dinner, date: "12/25/2016")

		visit dinners_path
		
		click_link '12/25/2016'
		expect(page.current_url).to eql(dinner_url(dinner))
	end
end