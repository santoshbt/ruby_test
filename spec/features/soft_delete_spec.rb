require 'rails_helper'

RSpec.feature "Get the required Restaurant" do
  before do 
  	@indian_restaurant = Restaurant.create(name:'Great Indian Thali')    	
  end

  scenario "shows a list of registered restaurants" do
   visit '/'
   click_link 'Soft Delete'
   expect(page).to have_content("Restaurant has been soft deleted")
  end
end
