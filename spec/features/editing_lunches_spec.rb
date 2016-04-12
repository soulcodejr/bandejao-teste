require 'rails_helper'

feature 'Editing lunches 'do 

	before do
		FactoryGirl.create(:lunch, date:'07/03/2015')
		visit lunches_path
		click_link 'Edit'
	end

	scenario 'updating lunches' do
	
		fill_in 'Date', 			with:'06/03/2016'
		fill_in 'Protein1', 		with:'Meal'
		fill_in 'Protein2', 		with:'Meatball'
		fill_in 'Protein3', 		with:'Chicken'
		fill_in 'Accompaniment1',  	with:'Rice'
	    fill_in 'Accompaniment2',  	with:'Mess'
	    fill_in 'Accompaniment3',  	with:'Potatoes'
	    fill_in 'Salad1',			with:'Kale'
	    fill_in 'Salad2',			with:'Cucumber'
	    fill_in 'Salad3',			with:'Carrot'
	    fill_in 'Garnish',			with:'Farofa'
	    fill_in 'Dessert',			with:'Mango'
	    fill_in 'Juice',			with:'Orange'

	    click_button "Update Lunch"

	    expect(page).to have_content('Lunch has been updated.')
	
	end
end 