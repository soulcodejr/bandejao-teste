require 'rails_helper'

feature 'Creating Dinners' do
  scenario "can create a dinner" do
    visit dinners_path

    click_link 'New Dinner'
   
    fill_in 'Date',            with: '12/05/2016'
    fill_in 'Soup',            with: 'Beans'
    fill_in 'Accompaniment1',  with: 'Rice'
    fill_in 'Accompaniment2',  with: 'Mess'
    fill_in 'Accompaniment3',  with: 'Potatoes'
    fill_in 'Garnish',         with: 'Farofa'
    fill_in 'Protein1',        with: 'Meat'
    fill_in 'Protein2',        with: 'Chicken'	
    fill_in 'Protein3',        with: 'Meatballs'
    fill_in 'Dessert',         with: 'Specialty'
    fill_in 'Juice',           with: 'Orange'
    
    click_button 'Create Dinner'
    expect(page).to have_content('Dinner has been created.')
  end

end