require 'rails_helper'

feature 'Creating Lunches'  do
	scenario 'can create a lunch' do

		visit lunches_path

		click_link 'New Lunch'

		fill_in 'Date', 			with:'06/03/2016'
		fill_in 'Protein1', 		with:'Meal'
		fill_in 'Protein2', 		with:'Meatball'
		fill_in 'Protein3', 		with:'Chicken'
		fill_in 'Accompaniment1',  	with:'Rice'
    	fill_in 'Accompaniment2',  	with:'Mess'
    	fill_in 'Accompaniment3',  	with:'Potatoes'
    	fill_in 'Garnish',			with:'Farofa'
    	fill_in 'Dessert',			with:'Mango'
    	fill_in 'Juice',			with:'Orange'

    	click_button 'Create Lunch'

    	expect(page).to have_content('Lunch has been created.')
	end
end