require 'rails_helper'

RSpec.feature "Create cuisines" do
  before do 
  	@restaurant = Restaurant.create(name:'Great Indian Thali')    	    
  end

  scenario "fill in the cuisine for indian restaurant" do
    visit "/"
    click_link "Create Cuisines"

    fill_in 'cuisine_name', with: 'Dosa'
    fill_in 'cuisine_rating', with: 5 

    click_button 'Create Cuisine'
    cuisine = Cuisine.last
    expect(current_path).to eq(restaurant_path(@restaurant))
    expect(page).to have_content("Cuisine was successfully created.")
    expect(cuisine.restaurant_id).to eq(@restaurant.id)
  end
end
