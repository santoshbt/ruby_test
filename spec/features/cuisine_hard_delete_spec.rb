require 'rails_helper'

RSpec.feature "Get the required Restaurant" do
  before do 
  	@restaurant = Restaurant.create(name:'Great Indian Thali')    	
  	@cuisine = @restaurant.cuisines.build(name: 'Dosa', rating: 4)
  	@cuisine.save
  end

  scenario "shows a list of registered restaurants" do
   visit '/'
   click_link 'Show'
   click_link 'Hard Delete'

   expect(page).to have_content("Cuisine has been hard deleted")
  end
end
