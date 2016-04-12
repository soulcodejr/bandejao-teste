require 'rails_helper'

feature "Deleting dinners" do
  scenario "Deleting a dinner" do
    FactoryGirl.create(:dinner, date: "05/12/2016")

    visit dinners_path
    click_link 'Delete'

    expect(page).to have_content("Dinner has been destroyed.")

    visit dinners_path
  end
end