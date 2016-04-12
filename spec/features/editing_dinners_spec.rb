require 'rails_helper'

feature "Editing Dinners" do

  before do
        FactoryGirl.create(:dinner, date: "05/12/2016")
            visit dinners_path 
            click_link  'Edit'
  end

  scenario "Updating a dinner" do

    fill_in  "Soup",                 with: "Beans2"
    fill_in  "Accompaniment1",       with: "Rice2"
    fill_in  "Accompaniment2",       with: "Mess2"
    fill_in  "Accompaniment3",       with: "Potatoes2"
    fill_in  "Garnish",              with: "Farofa2"
    fill_in  "Protein1",             with: "Meal2"
    fill_in  "Protein2",             with: "Chicken2"	
    fill_in  "Protein3",             with: "Meatballs2"
    fill_in  "Dessert",              with: "Specialty2"
    fill_in  "Juice",                with: "Orange2"
    click_button "Update Dinner"

    expect(page).to have_content("Dinner has been updated.")

  end	

end